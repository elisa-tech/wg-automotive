# Safety concept
## Safety goal: while requested, the system shall display the driver warning within 200 ms or transition to the safe state within 200 ms.
<details><summary>Unfold Safety Goal</summary><p>

* [ID_1502911625] [Information] Information: “while ” means that, if the telltale request persists/is repeated, the system has to continue to display the telltale.
* [ID_1052985289] [Information] The 200 ms include the time needed for the request to reach the Cluster demo. This is considered in the frequency of the cyclic communication.
* [ID_1780168904] [FSR] [ASIL B] The Telltale requester shall send a request cyclically controlling whether a telltale is needed to be shown or not.
    * [ID_736988533] [TSR] [ASIL B] The Telltale requester shall send the telltale request message every 200 ms
    * [ID_529767340] [TSR] [ASIL B] The Telltale request message shall contain a boolean "telltale_request" = 0 if the telltale is not requested and 1 if the telltale is requested
    * [ID_950923064] [TSR] [ASIL B] The Telltale request message shall be E2E protected with E2E Protocol xxx
        * [ID_1340201467] [Information] We don't specify this in all detail here, Message counter and CRC is needed
* [ID_883554261] [FSR] [ASIL B] All inputs from outside the system, the cluster controller uses to determine whether a requested telltale is shown shall be E2E protected against data corruption out of order transmission and message loss
    * [ID_1807969240] [TSR] [ASIL B] The Cluster controller shall monitor messages from the Telltale requester
    * [ID_199781775] [TSR] [ASIL B] The Cluster controller shall check the telltale request message for E2E miss
        * [ID_1822634618] [Information] We don't specify this in all detail here, Message counter and CRC is needed
    * [ID_1213070481] [TSR] [ASIL B] If the cluster controller determines an E2E miss in the tell tale request message, the cluster controller shall transition the system into the safe state
    * [ID_1404407311] [TSR] [ASIL B] The Cluster controler shall check all additional inputs from outside the system, the Cluster controller needs to decide whether a requested telltale is displayed for E2E miss
        * [ID_114212614] [SW] [ASIL B] The Safety-Signal-Source shall check the additional inputs for E2E misses
            * [ID_1017729133] [Information] This refers not only to the telltale request messages from the telltale requester, but also all further inputs the safety-signal source needs to decide whether the requested telltale is displayed or not, e.g. input from a HW checker element, or Image data flowing back from the display
    * [ID_1264174165] [TSR] [ASIL B] If the cluster controller determines an E2E miss in an additional input needed for telltale verification, the cluster controller shall transition the system into the safe state
        * [ID_1488369061] [SW] [ASIL B] On E2E miss of any input to Safety-signal-source, Safety-signal-source shall request "Safe state" from the safety-app
* [ID_1579674255] [FSR] [ASIL B] The Instrument cluster shall display the requested telltale or transition to the safe state
    * [ID_1284231708] [Information] We implement this by splitting into a QM path rendering the Display and a Safety path checking whether the requested telltale is shown or not
    * [ID_205232490] [TSR] [QM[B]] The Instrument Cluster shall render the cluster display image within 70ms of the instrument Cluster receiving the message
        * [ID_499334358] [SW] [QM[B]] The QT app shall render the image within 70ms of the cluster controller receiving the message
    * [ID_874940663] [TSR] [ASIL B] The Instrument Cluster shall determine, whether the requested telltale is displayed
        * [ID_994205752] [Information] Safety-signal source part of the control flow
        * [ID_745377459] [SW] [ASIL B] The safety-signal-source shall determine, whether the requested telltale is shown
        * [ID_1088404633] [SW] [ASIL B] If the requested telltale is not shown, the Safety-signal-source shall request "Safe state" from the safety app.
        * [ID_382560048] [SW] [QM[B]] The safety-signal source shall cyclically send the safety status message to the safety app
        * [ID_70275415] [SW] [ASIL B] Communication from the Safety signal source to the Safety App shall be E2E protected
            * [ID_1259502493] [Information] We don't specify this in all detail here, Message counter and CRC is needed
        * [ID_1639133793] [SW] [ASIL B] The results of the Safety signal source workload shall deterministically depend on the inputs
            * [ID_220738134] [Information] This implies freedom from spatial interference between the safety-signal-source / safety app and the rest of the (Operating) system, if taken at face value. The formulation is deliberate, the Architecture Workgroup is analysing all potential ways such interference could happen, we then revisit this requirement to refine it regarding safety mechanisms on the application level handling the determined interference scenarios, where possible to avoid putting undue burden on the kernel.
            * [ID_1937203672] [Information] Hardware faults are out of scope, see assumptions
            * [ID_991487171] [Information] Temporal interference is not relevant here, since the watchdog transitions the system into the safe state, if execution takes too long.
    * [ID_1791854442] [TSR] [ASIL B] If the requested telltale is not displayed, the instrument cluster shall transition the system to the safe state by not triggering the external watchdog
        * [ID_538932640] [Information] Safety App portion of the Control Flow
        * [ID_563434302] [SW] [ASIL B] The Safety App shall check the Communication from Safety Signal Source for E2E misses
        * [ID_1726916053] [SW] [ASIL B] The Safety App shall pet the external watchdog, if and only if the cyclic message from the safety signal source passes the E2E check and does not request "safe state"
        * [ID_971824356] [SW] [ASIL B] The results of the Safety-app workload shall deterministically depend on the inputs
            * [ID_1459030927] [Information] This implies freedom from spatial interference between the safety-signal-source / safety app and the rest of the (Operating) system, if taken at face value. The formulation is deliberate, the Architecture Workgroup is analysing all potential ways such interference could happen, we then revisit this requirement to refine it regarding safety mechanisms on the application level handling the determined interference scenarios, where possible to avoid putting undue burden on the kernel.
            * [ID_722885474] [Information] Hardware faults are out of scope, see assumptions
            * [ID_560329904] [Information] Temporal interference is not relevant here, since the watchdog transitions the system into the safe state, if execution takes too long.
    * [ID_998490846] [TSR] [ASIL B] If the watchdog is not triggered within 200ms, it shall transition the system to the safet state
        * [ID_1409122909] [Information] Watchdog part of the control flow
        * [ID_1337523371] [Information] Timing allocation considerations:
The timings for rendering and telltale verification are not safety relevant, since the watchdog transitions to the system to the safe state, if the chain takes too long.
            * [ID_865269483] [Information] Signal sending including rendering by QT app: 100ms. We assume the time delay between the requester sending the message, and the cluster demo receiving it is less than 30ms, leaving 70ms for the rendering
            * [ID_1226012594] [Information] Display check inklusive WD trigger: 50ms
            * [ID_322365118] [Information] Watchdog logic inclusive backlight killing: 50ms
        * [ID_1266688002] [SW] [ASIL B] The watchdog shall disable the backlight of the Cluster Display within 50ms, if it is not triggered within 150ms.
* [ID_922972509] [FSR] [ASIL B] The chain between Telltale request sent and display/safe state shall be less than 200ms.
    * [ID_1197920546] [Information] Timing allocation considerations:
The timings for rendering and telltale verification are not safety relevant, since the watchdog transitions to the system to the safe state, if the chain takes too long.
        * [ID_1916288361] [Information] Signal sending including rendering by QT app: 100ms. We assume the time delay between the requester sending the message, and the cluster demo receiving it is less than 30ms, leaving 70ms for the rendering
        * [ID_980166321] [Information] Display check inklusive WD trigger: 50ms
        * [ID_450743490] [Information] Watchdog logic inclusive backlight killing: 50ms
    * [ID_190273872] [TSR] [ASIL B] The Telltale request message shall be sent every 200 ms
    * [ID_571758931] [TSR] [QM[B]] The Instrument Cluster shall render the cluster display image within 70ms of the instrument Cluster receiving the message
        * [ID_207710874] [SW] [QM[B]] The QT app shall render the image within 70ms of the cluster controller receiving the message
    * [ID_1787478473] [TSR] [QM[B]] Verification of telltale shown shall be performed within 50ms
    * [ID_1679094583] [TSR] [ASIL B] If the watchdog is not triggered within 200ms, it shall transition the system to the safet state
        * [ID_866134195] [Information] Watchdog part of the control flow
        * [ID_329269881] [Information] Timing allocation considerations:
The timings for rendering and telltale verification are not safety relevant, since the watchdog transitions to the system to the safe state, if the chain takes too long.
            * [ID_678436710] [Information] Signal sending including rendering by QT app: 100ms. We assume the time delay between the requester sending the message, and the cluster demo receiving it is less than 30ms, leaving 70ms for the rendering
            * [ID_589807630] [Information] Display check inklusive WD trigger: 50ms
            * [ID_27256903] [Information] Watchdog logic inclusive backlight killing: 50ms
        * [ID_91008504] [SW] [ASIL B] The watchdog shall disable the backlight of the Cluster Display within 50ms, if it is not triggered within 150ms.
</p></details>

## Safety goal: The system shall transition to the safe state within 100ms of the display showing an unrequested telltale for longer than 100 ms
<details><summary>Unfold Safety Goal</summary><p>

* [ID_575915779] [Information] We need to discuss this, this might not work with the frequency of 200ms we have in SZ1, it will if we relax it a little bit to around 120ms, see
* [ID_1024133711] [FSR] [ASIL B] The Telltale requester shall send a request cyclically controlling whether a telltale is needed to be shown or not.
    * [ID_793329888] [TSR] [ASIL B] The Telltale requester shall send the telltale request message every 200 ms
    * [ID_1442215130] [TSR] [ASIL B] The Telltale request message shall contain a boolean "telltale_request" = 0 if the telltale is not requested and 1 if the telltale is requested
    * [ID_9487660] [TSR] [ASIL B] The Telltale request message shall be E2E protected with E2E Protocol xxx
        * [ID_83965615] [Information] We don't specify this in all detail here, Message counter and CRC is needed
* [ID_1726434528] [FSR] [ASIL B] All inputs from outside the system, the cluster controller uses to determine whether a requested telltale is shown shall be E2E protected against data corruption out of order transmission and message loss
    * [ID_691030811] [TSR] [ASIL B] The Cluster controller shall monitor messages from the Telltale requester
    * [ID_1451767216] [TSR] [ASIL B] The Cluster controller shall check the telltale request message for E2E miss
        * [ID_324867201] [Information] We don't specify this in all detail here, Message counter and CRC is needed
    * [ID_29229427] [TSR] [ASIL B] If the cluster controller determines an E2E miss in the tell tale request message, the cluster controller shall transition the system into the safe state
    * [ID_1988413123] [TSR] [ASIL B] The Cluster controler shall check all additional inputs from outside the system, the Cluster controller needs to decide whether a requested telltale is displayed for E2E miss
        * [ID_571517104] [SW] [ASIL B] The Safety-Signal-Source shall check the additional inputs for E2E misses
            * [ID_224260376] [Information] This refers not only to the telltale request messages from the telltale requester, but also all further inputs the safety-signal source needs to decide whether the requested telltale is displayed or not, e.g. input from a HW checker element, or Image data flowing back from the display
    * [ID_1568256292] [TSR] [ASIL B] If the cluster controller determines an E2E miss in an additional input needed for telltale verification, the cluster controller shall transition the system into the safe state
        * [ID_1562874415] [SW] [ASIL B] On E2E miss of any input to Safety-signal-source, Safety-signal-source shall request "Safe state" from the safety-app
* [ID_1967724661] [FSR] [ASIL B] The instrument cluster shall transition to the safe state within 50ms, if an unrequested telltale is displayed for more than 100 ms
    * [ID_464783880] [Information] We implement this by splitting into a QM path rendering the Display and a Safety path checking whether the requested telltale is shown or not
    * [ID_1234093641] [TSR] [QM[B]] The Instrument Cluster shall render the cluster display image within 70ms of the instrument Cluster receiving the message
        * [ID_1721681830] [SW] [QM[B]] The QT app shall render the image within 70ms of the cluster controller receiving the message
    * [ID_142142357] [TSR] [ASIL B] All Inputs the Cluster controller needs to decide whether a un requested telltale is displayed shall be E2E protected
    * [ID_1824391227] [TSR] [ASIL B] The Instrument Cluster shall determine, if a not requested telltale is displayed for more than 100ms
    * [ID_1623141656] [TSR] [ASIL B] If a unrequested telltale is shown for more than 100ms the instrument cluster shall transition the system to the safe state by not triggering the external watchdog
* [ID_1771819379] [FSR] [ASIL B] The chain between Telltale request sent and display/safe state shall be less than 200ms.
    * [ID_1372264395] [Information] Timing allocation considerations:
The timings for rendering and telltale verification are not safety relevant, since the watchdog transitions to the system to the safe state, if the chain takes too long.
        * [ID_851857056] [Information] Signal sending including rendering by QT app: 100ms. We assume the time delay between the requester sending the message, and the cluster demo receiving it is less than 30ms, leaving 70ms for the rendering
        * [ID_60352073] [Information] Display check inklusive WD trigger: 50ms
        * [ID_1148423018] [Information] Watchdog logic inclusive backlight killing: 50ms
    * [ID_1374235407] [TSR] [ASIL B] The Telltale request message shall be sent every 200 ms
    * [ID_66701131] [TSR] [QM[B]] The Instrument Cluster shall render the cluster display image within 70ms of the instrument Cluster receiving the message
        * [ID_139490740] [SW] [QM[B]] The QT app shall render the image within 70ms of the cluster controller receiving the message
    * [ID_1797976261] [TSR] [QM[B]] Verification of telltale shown shall be performed within 50ms
    * [ID_666005204] [TSR] [ASIL B] If the watchdog is not triggered within 200ms, it shall transition the system to the safet state
        * [ID_1120681616] [Information] Watchdog part of the control flow
        * [ID_150284297] [Information] Timing allocation considerations:
The timings for rendering and telltale verification are not safety relevant, since the watchdog transitions to the system to the safe state, if the chain takes too long.
            * [ID_149104298] [Information] Signal sending including rendering by QT app: 100ms. We assume the time delay between the requester sending the message, and the cluster demo receiving it is less than 30ms, leaving 70ms for the rendering
            * [ID_530521654] [Information] Display check inklusive WD trigger: 50ms
            * [ID_1019504250] [Information] Watchdog logic inclusive backlight killing: 50ms
        * [ID_10230674] [SW] [ASIL B] The watchdog shall disable the backlight of the Cluster Display within 50ms, if it is not triggered within 150ms.
</p></details>
