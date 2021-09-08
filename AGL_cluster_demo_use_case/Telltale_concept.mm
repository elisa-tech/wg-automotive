<map version="freeplane 1.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<attribute_registry SHOW_ATTRIBUTES="hide"/>
<node TEXT="Safety concept Cluster Display use case" LOCALIZED_STYLE_REF="AutomaticLayout.level.root" FOLDED="false" ID="ID_273763478" CREATED="1609081280555" MODIFIED="1613493286397">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="FuSi-Addon-version" VALUE="0.4" OBJECT="org.freeplane.features.format.FormattedNumber|0.4"/>
<attribute NAME="Enable Tainting" VALUE="false"/>
<hook NAME="MapStyle" zoom="1.213">
    <properties fit_to_viewport="false" show_icon_for_attributes="false" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_1592302203" ICON_SIZE="12 pt" COLOR="#000000" STYLE="fork">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1592302203" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#6666ff" STYLE="bubble" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#4e85f8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
<stylenode TEXT="Requirement">
<edge COLOR="#007c00"/>
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE=""/>
<hook NAME="NodeConditionalStyles">
    <conditional_style ACTIVE="true" STYLE_REF="ASIL A" LAST="false">
        <attribute_compare_condition VALUE="A" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="ASIL A[A]" LAST="false">
        <attribute_compare_condition VALUE="A[A]" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="ASIL A[B]" LAST="false">
        <attribute_compare_condition VALUE="A[B]" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="ASIL A[C]" LAST="false">
        <attribute_compare_condition VALUE="A[C]" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="ASIL A[D]" LAST="false">
        <attribute_compare_condition VALUE="A[D]" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="ASIL B" LAST="false">
        <attribute_compare_condition VALUE="B" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="ASIL B[B]" LAST="false">
        <attribute_compare_condition VALUE="B[B]" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="ASIL B[C]" LAST="false">
        <attribute_compare_condition VALUE="B[C]" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="ASIL B[D]" LAST="false">
        <attribute_compare_condition VALUE="B[D]" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="ASIL C" LAST="false">
        <attribute_compare_condition VALUE="C" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="ASIL C[C]" LAST="false">
        <attribute_compare_condition VALUE="C[C]" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="ASIL C[D]" LAST="false">
        <attribute_compare_condition VALUE="C[D]" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="ASIL D" LAST="false">
        <attribute_compare_condition VALUE="D" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="ASIL D[D]" LAST="false">
        <attribute_compare_condition VALUE="D[D]" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="QM" LAST="false">
        <attribute_compare_condition VALUE="QM" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="QM[A]" LAST="false">
        <attribute_compare_condition VALUE="QM[A]" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="QM[B]" LAST="false">
        <attribute_compare_condition VALUE="QM[B]" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="QM[C]" LAST="false">
        <attribute_compare_condition VALUE="QM[C]" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="QM[D]" LAST="false">
        <attribute_compare_condition VALUE="QM[D]" ATTRIBUTE="ASIL" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="FSR" LAST="false">
        <attribute_compare_condition VALUE="FSR" ATTRIBUTE="Type" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="TSR" LAST="false">
        <attribute_compare_condition VALUE="TSR" ATTRIBUTE="Type" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="Info" LAST="false">
        <attribute_compare_condition VALUE="Information" ATTRIBUTE="Type" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="SZ" LAST="false">
        <attribute_compare_condition VALUE="SZ" ATTRIBUTE="Type" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="HW" LAST="false">
        <attribute_compare_condition VALUE="HW" ATTRIBUTE="Type" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="SW" LAST="false">
        <attribute_compare_condition VALUE="SW" ATTRIBUTE="Type" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="Tainted_by_child" LAST="false">
        <attribute_exists_condition ATTRIBUTE="Tainted_by_child"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="Tainted_by_parent" LAST="false">
        <attribute_exists_condition ATTRIBUTE="Tainted_by_parent"/>
    </conditional_style>
    <conditional_style ACTIVE="true" STYLE_REF="Shared" LAST="false">
        <attribute_compare_condition VALUE="true" ATTRIBUTE="Shared" COMPARATION_RESULT="0" SUCCEED="true"/>
    </conditional_style>
</hook>
</stylenode>
<stylenode TEXT="QM">
<icon BUILTIN="ASIL_QM"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="QM[A]">
<icon BUILTIN="ASIL_QM[A]"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="QM[B]">
<icon BUILTIN="ASIL_QM[B]"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="QM[C]">
<icon BUILTIN="ASIL_QM[C]"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="QM[D]">
<icon BUILTIN="ASIL_QM[D]"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="ASIL A">
<icon BUILTIN="ASIL_A"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="ASIL A[A]">
<icon BUILTIN="ASIL_A[A]"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="ASIL A[B]">
<icon BUILTIN="ASIL_A[B]"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="ASIL A[C]">
<icon BUILTIN="ASIL_A[C]"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="ASIL A[D]">
<icon BUILTIN="ASIL_A[D]"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="ASIL B">
<icon BUILTIN="ASIL_B"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="ASIL B[B]">
<icon BUILTIN="ASIL_B[B]"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="ASIL B[C]">
<icon BUILTIN="ASIL_B[C]"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="ASIL B[D]">
<icon BUILTIN="ASIL_B[D]"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="ASIL C">
<icon BUILTIN="ASIL_C"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="ASIL C[C]">
<icon BUILTIN="ASIL_C[C]"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="ASIL C[D]">
<icon BUILTIN="ASIL_C[D]"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="ASIL D">
<icon BUILTIN="ASIL_D"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="ASIL D[D]">
<icon BUILTIN="ASIL_D[D]"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="SZ" STYLE="wide_hexagon">
<icon BUILTIN="SZ"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="FSR" STYLE="oval">
<icon BUILTIN="FSR"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="TSR" STYLE="bubble">
<icon BUILTIN="TSR"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="Info">
<icon BUILTIN="Info"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="HW" STYLE="rectangle" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#ff9900">
<icon BUILTIN="HW"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="SW" STYLE="rectangle" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#0066ff">
<icon BUILTIN="SW"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="Warning" BACKGROUND_COLOR="#ff0033" STYLE="rectangle" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#0066ff">
<icon BUILTIN="button_cancel"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="Source code Tag" ICON_SIZE="12 pt" BACKGROUND_COLOR="#cccccc" STYLE="narrow_hexagon" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#0066ff">
<icon BUILTIN="very_positive"/>
<font NAME="L M Mono Caps10" BOLD="true"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="Tainted_by_child" STYLE="rectangle" BORDER_WIDTH="3 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#0000ff" BORDER_DASH="CLOSE_DOTS">
<icon BUILTIN="revision"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="Tainted_by_parent" STYLE="rectangle" BORDER_WIDTH="3 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#ff0000" BORDER_DASH="CLOSE_DOTS">
<icon BUILTIN="revision-red"/>
<edge COLOR="#007c00"/>
</stylenode>
<stylenode TEXT="Shared" BACKGROUND_COLOR="#ffcc99">
<edge COLOR="#007c00"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="57" RULE="ON_BRANCH_CREATION"/>
<node TEXT="while requested, the system shall display the driver warning within 200 ms or transition to the safe state within 200 ms." STYLE_REF="Requirement" POSITION="right" ID="ID_971613141" CREATED="1609106418278" MODIFIED="1628149302238" HGAP_QUANTITY="20 pt" VSHIFT_QUANTITY="3 pt">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="SZ"/>
<attribute NAME="Allocation" VALUE=""/>
<node TEXT="Information: “while ” means that, if the telltale request persists/is repeated, the system has to continue to display the telltale." STYLE_REF="Requirement" ID="ID_1502911625" CREATED="1609087027838" MODIFIED="1610897196059">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
</node>
<node TEXT="The 200 ms include the time needed for the request to reach the Cluster demo. This is considered in the frequency of the cyclic communication." STYLE_REF="Requirement" ID="ID_1052985289" CREATED="1609428730544" MODIFIED="1610897196061">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
</node>
<node TEXT="The Telltale requester shall send a request cyclically controlling whether a telltale is needed to be shown or not." STYLE_REF="Requirement" FOLDED="true" ID="ID_1780168904" CREATED="1609154124607" MODIFIED="1610897196063">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="FSR"/>
<attribute NAME="Allocation" VALUE="Telltale-requester"/>
<node TEXT="The Telltale requester shall send the telltale request message every 200 ms" STYLE_REF="Requirement" ID="ID_736988533" CREATED="1610617420206" MODIFIED="1610897196066">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Allocation" VALUE="Telltale-requester"/>
</node>
<node TEXT="The Telltale request message shall contain a boolean &quot;telltale_request&quot; = 0 if the telltale is not requested and 1 if the telltale is requested" STYLE_REF="Requirement" ID="ID_529767340" CREATED="1610617528540" MODIFIED="1610897196068">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Allocation" VALUE="Telltale-requester"/>
</node>
<node TEXT="The Telltale request message shall be E2E protected with E2E Protocol xxx" STYLE_REF="Requirement" ID="ID_950923064" CREATED="1610617442339" MODIFIED="1610897196069">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Allocation" VALUE="Telltale-requester"/>
<node TEXT="We don&apos;t specify this in all detail here, Message counter and CRC is needed" STYLE_REF="Requirement" ID="ID_1340201467" CREATED="1610617507393" MODIFIED="1610897196070">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="Information"/>
</node>
</node>
</node>
<node TEXT="All inputs from outside the system, the cluster controller uses to determine whether a requested telltale is shown shall be E2E protected against data corruption out of order transmission and message loss" STYLE_REF="Requirement" FOLDED="true" ID="ID_883554261" CREATED="1609428983812" MODIFIED="1613493256414">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="FSR"/>
<attribute NAME="Allocation" VALUE="Telltale-requester"/>
<attribute NAME="Shared" VALUE="= node.getCountNodesSharingContent()&gt;0"/>
<node TEXT="The Cluster controller shall monitor messages from the Telltale requester" STYLE_REF="Requirement" ID="ID_1807969240" CREATED="1610617925379" MODIFIED="1610897196075">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Allocation" VALUE="Cluster Controller"/>
</node>
<node TEXT="The Cluster controller shall check the telltale request message for E2E miss" STYLE_REF="Requirement" ID="ID_199781775" CREATED="1610617974658" MODIFIED="1610897196078">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Allocation" VALUE="Cluster Controller"/>
<node ID="ID_1822634618" TREE_ID="ID_1340201467"/>
</node>
<node TEXT="If the cluster controller determines an E2E miss in the tell tale request message, the cluster controller shall transition the system into the safe state" STYLE_REF="Requirement" ID="ID_1213070481" CREATED="1610618005875" MODIFIED="1613493250297">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Allocation" VALUE="Telltale-requester"/>
<attribute NAME="ASIL_sc" VALUE="B"/>
<attribute NAME="Type_sc" VALUE="TSR"/>
<attribute NAME="Allocation_sc" VALUE="Cluster Controller"/>
<attribute NAME="Shared" VALUE="= node.getCountNodesSharingContent()&gt;0"/>
</node>
<node TEXT="The Cluster controler shall check all additional inputs from outside the system, the Cluster controller needs to decide whether a requested telltale is displayed for E2E miss" STYLE_REF="Requirement" ID="ID_1404407311" CREATED="1610654302938" MODIFIED="1610897196083">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Allocation" VALUE="Not Allocated"/>
<node TEXT="The Safety-Signal-Source shall check the additional inputs for E2E misses" STYLE_REF="Requirement" ID="ID_114212614" CREATED="1609431592950" MODIFIED="1610897196085">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="SW"/>
<attribute NAME="Allocation" VALUE="Safety-Signal-source"/>
<node TEXT="This refers not only to the telltale request messages from the telltale requester, but also all further inputs the safety-signal source needs to decide whether the requested telltale is displayed or not, e.g. input from a HW checker element, or Image data flowing back from the display" STYLE_REF="Requirement" ID="ID_1017729133" CREATED="1610623331702" MODIFIED="1610897196086">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="Information"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Allocation" VALUE=""/>
</node>
</node>
</node>
<node TEXT="If the cluster controller determines an E2E miss in an additional input needed for telltale verification, the cluster controller shall transition the system into the safe state" STYLE_REF="Requirement" ID="ID_1264174165" CREATED="1610700002683" MODIFIED="1610897196087">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Allocation" VALUE="Cluster Controller"/>
<node TEXT="On E2E miss of any input to Safety-signal-source, Safety-signal-source shall request &quot;Safe state&quot; from the safety-app" STYLE_REF="Requirement" ID="ID_1488369061" CREATED="1609431616377" MODIFIED="1610897196089">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="SW"/>
<attribute NAME="Allocation" VALUE="Safety-Signal-source"/>
</node>
</node>
</node>
<node TEXT="The Instrument cluster shall display the requested telltale or transition to the safe state" STYLE_REF="Requirement" FOLDED="true" ID="ID_1579674255" CREATED="1609154144484" MODIFIED="1610897196090">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="FSR"/>
<node TEXT="We implement this by splitting into a QM path rendering the Display and a Safety path checking whether the requested telltale is shown or not" STYLE_REF="Requirement" ID="ID_1284231708" CREATED="1609429731106" MODIFIED="1610897196092">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
</node>
<node TEXT="The Instrument Cluster shall render the cluster display image within 70ms of the instrument Cluster receiving the message" STYLE_REF="Requirement" ID="ID_205232490" CREATED="1610125989843" MODIFIED="1610897196095">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="QM[B]"/>
<attribute NAME="Allocation" VALUE="Telltale-requester"/>
<node TEXT="The QT app shall render the image within 70ms of the cluster controller receiving the message" STYLE_REF="Requirement" ID="ID_499334358" CREATED="1609430956929" MODIFIED="1610897196100">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="QM[B]"/>
<attribute NAME="Type" VALUE="SW"/>
<attribute NAME="Allocation" VALUE="QT Application"/>
</node>
</node>
<node TEXT="The Instrument Cluster shall determine, whether the requested telltale is displayed" STYLE_REF="Requirement" ID="ID_874940663" CREATED="1610203034090" MODIFIED="1610897196102">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Allocation" VALUE="Cluster Controller"/>
<node TEXT="Safety-signal source part of the control flow" STYLE_REF="Requirement" ID="ID_994205752" CREATED="1609431861307" MODIFIED="1610897196103">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
</node>
<node TEXT="The safety-signal-source shall determine, whether the requested telltale is shown" STYLE_REF="Requirement" ID="ID_745377459" CREATED="1609429843792" MODIFIED="1610897196105">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="SW"/>
<attribute NAME="Allocation" VALUE="Safety-Signal-source"/>
</node>
<node TEXT="If the requested telltale is not shown, the Safety-signal-source shall request &quot;Safe state&quot; from the safety app." STYLE_REF="Requirement" ID="ID_1088404633" CREATED="1609431675235" MODIFIED="1610897196106">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="SW"/>
<attribute NAME="Allocation" VALUE="Telltale-requester"/>
</node>
<node TEXT="The safety-signal source shall cyclically send the safety status message to the safety app" STYLE_REF="Requirement" ID="ID_382560048" CREATED="1609431951169" MODIFIED="1610897196107">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="QM[B]"/>
<attribute NAME="Type" VALUE="SW"/>
<attribute NAME="Allocation" VALUE="Safety-Signal-source"/>
</node>
<node TEXT="Communication from the Safety signal source to the Safety App shall be E2E protected" STYLE_REF="Requirement" ID="ID_70275415" CREATED="1609432146314" MODIFIED="1610897196108">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="SW"/>
<attribute NAME="Allocation" VALUE="Safety-Signal-source"/>
<node TEXT="We don&apos;t specify this in all detail here, Message counter and CRC is needed" STYLE_REF="Requirement" ID="ID_1259502493" CREATED="1610617507393" MODIFIED="1610897196109">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="Information"/>
</node>
</node>
<node TEXT="The results of the Safety signal source workload shall deterministically depend on the inputs" STYLE_REF="Requirement" ID="ID_1639133793" CREATED="1609432250721" MODIFIED="1610897196109">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="SW"/>
<attribute NAME="Allocation" VALUE="Telltale-requester"/>
<node TEXT="This implies freedom from spatial interference between the safety-signal-source / safety app and the rest of the (Operating) system, if taken at face value. The formulation is deliberate, the Architecture Workgroup is analysing all potential ways such interference could happen, we then revisit this requirement to refine it regarding safety mechanisms on the application level handling the determined interference scenarios, where possible to avoid putting undue burden on the kernel." STYLE_REF="Requirement" ID="ID_220738134" CREATED="1609432347425" MODIFIED="1610897196110">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
</node>
<node TEXT="Hardware faults are out of scope, see assumptions" STYLE_REF="Requirement" ID="ID_1937203672" CREATED="1609432645149" MODIFIED="1610897196111">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
</node>
<node TEXT="Temporal interference is not relevant here, since the watchdog transitions the system into the safe state, if execution takes too long." STYLE_REF="Requirement" ID="ID_991487171" CREATED="1609432698331" MODIFIED="1610897196112">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
</node>
</node>
</node>
<node TEXT="If the requested telltale is not displayed, the instrument cluster shall transition the system to the safe state by not triggering the external watchdog" STYLE_REF="Requirement" ID="ID_1791854442" CREATED="1610203085715" MODIFIED="1610897196112">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Allocation" VALUE="Cluster Controller"/>
<node TEXT="Safety App portion of the Control Flow" STYLE_REF="Requirement" ID="ID_538932640" CREATED="1609431908398" MODIFIED="1610897196113">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
</node>
<node TEXT="The Safety App shall check the Communication from Safety Signal Source for E2E misses" STYLE_REF="Requirement" ID="ID_563434302" CREATED="1609432787604" MODIFIED="1610897196114">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="SW"/>
<attribute NAME="Allocation" VALUE="Safety App"/>
</node>
<node TEXT="The Safety App shall pet the external watchdog, if and only if the cyclic message from the safety signal source passes the E2E check and does not request &quot;safe state&quot;" STYLE_REF="Requirement" ID="ID_1726916053" CREATED="1609432835072" MODIFIED="1610897196115">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="SW"/>
<attribute NAME="Allocation" VALUE="Telltale-requester"/>
</node>
<node TEXT="The results of the Safety-app workload shall deterministically depend on the inputs" STYLE_REF="Requirement" ID="ID_971824356" CREATED="1609432250721" MODIFIED="1610897196116">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="SW"/>
<attribute NAME="Allocation" VALUE="Safety App"/>
<node TEXT="This implies freedom from spatial interference between the safety-signal-source / safety app and the rest of the (Operating) system, if taken at face value. The formulation is deliberate, the Architecture Workgroup is analysing all potential ways such interference could happen, we then revisit this requirement to refine it regarding safety mechanisms on the application level handling the determined interference scenarios, where possible to avoid putting undue burden on the kernel." STYLE_REF="Requirement" ID="ID_1459030927" CREATED="1609432347425" MODIFIED="1610897196116">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
</node>
<node TEXT="Hardware faults are out of scope, see assumptions" STYLE_REF="Requirement" ID="ID_722885474" CREATED="1609432645149" MODIFIED="1610897196118">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
</node>
<node TEXT="Temporal interference is not relevant here, since the watchdog transitions the system into the safe state, if execution takes too long." STYLE_REF="Requirement" ID="ID_560329904" CREATED="1609432698331" MODIFIED="1610897196118">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
</node>
</node>
</node>
<node TEXT="If the watchdog is not triggered within 200ms, it shall transition the system to the safet state" STYLE_REF="Requirement" ID="ID_998490846" CREATED="1610698701000" MODIFIED="1613492509103">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Allocation" VALUE="Telltale-requester"/>
<attribute NAME="ASIL_sc" VALUE="B"/>
<attribute NAME="Type_sc" VALUE="TSR"/>
<attribute NAME="Allocation_sc" VALUE="Watchdog"/>
<attribute NAME="Shared" VALUE="= node.getCountNodesSharingContent()&gt;0"/>
<node TEXT="Watchdog part of the control flow" STYLE_REF="Requirement" ID="ID_1409122909" CREATED="1609431908398" MODIFIED="1613492494719">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
<attribute NAME="Allocation" VALUE=""/>
<attribute NAME="Shared" VALUE="= node.getCountNodesSharingContent()&gt;0"/>
</node>
<node TEXT="Timing allocation considerations:&#xa;The timings for rendering and telltale verification are not safety relevant, since the watchdog transitions to the system to the safe state, if the chain takes too long." STYLE_REF="Requirement" ID="ID_1337523371" CREATED="1609430707841" MODIFIED="1613492499586">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
<attribute NAME="Allocation" VALUE=""/>
<attribute NAME="Shared" VALUE="= node.getCountNodesSharingContent()&gt;0"/>
<node TEXT="Signal sending including rendering by QT app: 100ms. We assume the time delay between the requester sending the message, and the cluster demo receiving it is less than 30ms, leaving 70ms for the rendering" STYLE_REF="Requirement" ID="ID_865269483" CREATED="1609433185494" MODIFIED="1610897196128">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
</node>
<node TEXT="Display check inklusive WD trigger: 50ms" STYLE_REF="Requirement" ID="ID_1226012594" CREATED="1609433217685" MODIFIED="1610897196132">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
</node>
<node TEXT="Watchdog logic inclusive backlight killing: 50ms" STYLE_REF="Requirement" ID="ID_322365118" CREATED="1609433239777" MODIFIED="1610897196133">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
</node>
</node>
<node TEXT="The watchdog shall disable the backlight of the Cluster Display within 50ms, if it is not triggered within 150ms." STYLE_REF="Requirement" ID="ID_1266688002" CREATED="1609429267081" MODIFIED="1613492503872">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="SW"/>
<attribute NAME="Allocation" VALUE="Safety-Signal-source"/>
<attribute NAME="Allocation_sc" VALUE="Telltale-requester"/>
<attribute NAME="Type_sc" VALUE="SW"/>
<attribute NAME="ASIL_sc" VALUE="B"/>
<attribute NAME="Shared" VALUE="= node.getCountNodesSharingContent()&gt;0"/>
</node>
</node>
</node>
<node TEXT="The chain between Telltale request sent and display/safe state shall be less than 200ms." STYLE_REF="Requirement" FOLDED="true" ID="ID_922972509" CREATED="1609428685902" MODIFIED="1628146363668">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="FSR"/>
<attribute NAME="Allocation" VALUE="Telltale-requester"/>
<attribute NAME="Shared" VALUE="= node.getCountNodesSharingContent()&gt;0"/>
<node ID="ID_1197920546" TREE_ID="ID_1337523371">
<node ID="ID_1916288361" TREE_ID="ID_865269483"/>
<node ID="ID_980166321" TREE_ID="ID_1226012594"/>
<node ID="ID_450743490" TREE_ID="ID_322365118"/>
</node>
<node TEXT="The Telltale request message shall be sent every 200 ms" STYLE_REF="Requirement" ID="ID_190273872" CREATED="1609429199215" MODIFIED="1610897196138">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="Allocation" VALUE="Telltale-requester"/>
</node>
<node ID="ID_571758931" TREE_ID="ID_205232490">
<node ID="ID_207710874" TREE_ID="ID_499334358"/>
</node>
<node TEXT="Verification of telltale shown shall be performed within 50ms" STYLE_REF="Requirement" ID="ID_1787478473" CREATED="1609430913281" MODIFIED="1610897196140">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="QM[B]"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="Allocation" VALUE="Cluster Controller"/>
</node>
<node ID="ID_1679094583" TREE_ID="ID_998490846">
<node ID="ID_866134195" TREE_ID="ID_1409122909"/>
<node ID="ID_329269881" TREE_ID="ID_1337523371">
<node ID="ID_678436710" TREE_ID="ID_865269483"/>
<node ID="ID_589807630" TREE_ID="ID_1226012594"/>
<node ID="ID_27256903" TREE_ID="ID_322365118"/>
</node>
<node ID="ID_91008504" TREE_ID="ID_1266688002"/>
</node>
</node>
<node TEXT="The system shall display the black screen (safe state) during startup, until the temporal supervision is operational" STYLE_REF="Requirement" ID="ID_1847240964" CREATED="1628087477336" MODIFIED="1628149302230" VSHIFT_QUANTITY="-2.25 pt">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="FSR"/>
<attribute NAME="Type_sc" VALUE="FSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="ASIL_sc" VALUE="B"/>
<attribute NAME="Shared" VALUE="= node.getCountNodesSharingContent()&gt;0"/>
<node TEXT="i.e. Black screen until the Watchdog is configured" STYLE_REF="Requirement" ID="ID_1563888254" CREATED="1628088054892" MODIFIED="1628088087912">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="Information"/>
<attribute NAME="Type_sc" VALUE="Information"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Allocation" VALUE=""/>
<attribute NAME="Shared" VALUE="= node.getCountNodesSharingContent()&gt;0"/>
</node>
<node TEXT="The System shall display the black screen (Safe state) during startup" STYLE_REF="Requirement" ID="ID_672059647" CREATED="1628088092556" MODIFIED="1628088337395">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="Type_sc" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="ASIL_sc" VALUE="B"/>
<attribute NAME="Shared" VALUE="= node.getCountNodesSharingContent()&gt;0"/>
<node TEXT="The Safety App shall enable QT Rendering if and only if the WD is configured" STYLE_REF="Requirement" ID="ID_1913387794" CREATED="1628088352710" MODIFIED="1628088531045">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="SW"/>
<attribute NAME="Type_sc" VALUE="SW"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="ASIL_sc" VALUE="B"/>
<attribute NAME="Shared" VALUE="= node.getCountNodesSharingContent()&gt;0"/>
</node>
</node>
<node TEXT="The System shall configure the Watchdog to 200ms during startup" STYLE_REF="Requirement" ID="ID_1936307008" CREATED="1628088166146" MODIFIED="1628088342212">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="Type_sc" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="ASIL_sc" VALUE="B"/>
<attribute NAME="Shared" VALUE="= node.getCountNodesSharingContent()&gt;0"/>
<node TEXT="The Safety App shall configure the Watchdog to 200ms during startup" STYLE_REF="Requirement" ID="ID_217149453" CREATED="1628088433412" MODIFIED="1628088537062">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="SW"/>
<attribute NAME="Type_sc" VALUE="SW"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="ASIL_sc" VALUE="B"/>
<attribute NAME="Shared" VALUE="= node.getCountNodesSharingContent()&gt;0"/>
</node>
</node>
<node TEXT="The System shall not transition to operational unless the Watchdog is configured" STYLE_REF="Requirement" ID="ID_1385530942" CREATED="1628088213944" MODIFIED="1628088347629">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="Type_sc" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="ASIL_sc" VALUE="B"/>
<attribute NAME="Shared" VALUE="= node.getCountNodesSharingContent()&gt;0"/>
<node TEXT="The Safety App shall transition to state &quot;Operational&quot; if and only if the Watchdog is configured" STYLE_REF="Requirement" ID="ID_1562526711" CREATED="1628088478280" MODIFIED="1628088590912">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="SW"/>
<attribute NAME="Type_sc" VALUE="SW"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="ASIL_sc" VALUE="B"/>
<attribute NAME="Shared" VALUE="= node.getCountNodesSharingContent()&gt;0"/>
</node>
</node>
</node>
</node>
<node TEXT="The system shall transition to the safe state within 100ms of the display showing an unrequested telltale for longer than 100 ms" STYLE_REF="Requirement" POSITION="right" ID="ID_888816481" CREATED="1609433460805" MODIFIED="1610897196142">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Type" VALUE="SZ"/>
<attribute NAME="Allocation" VALUE=""/>
<node TEXT="We need to discuss this, this might not work with the frequency of 200ms we have in SZ1, it will if we relax it a little bit to around 120ms, see" STYLE_REF="Requirement" ID="ID_575915779" CREATED="1609495380329" MODIFIED="1610897196143">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="ASIL" VALUE=""/>
<attribute NAME="Type" VALUE="Information"/>
</node>
<node ID="ID_1024133711" TREE_ID="ID_1780168904">
<node ID="ID_793329888" TREE_ID="ID_736988533"/>
<node ID="ID_1442215130" TREE_ID="ID_529767340"/>
<node ID="ID_9487660" TREE_ID="ID_950923064">
<node ID="ID_83965615" CONTENT_ID="ID_1340201467"/>
</node>
</node>
<node ID="ID_1726434528" TREE_ID="ID_883554261">
<node ID="ID_691030811" TREE_ID="ID_1807969240"/>
<node ID="ID_1451767216" TREE_ID="ID_199781775">
<node ID="ID_324867201" CONTENT_ID="ID_1340201467"/>
</node>
<node ID="ID_29229427" TREE_ID="ID_1213070481"/>
<node ID="ID_1988413123" TREE_ID="ID_1404407311">
<node ID="ID_571517104" TREE_ID="ID_114212614">
<node ID="ID_224260376" TREE_ID="ID_1017729133"/>
</node>
</node>
<node ID="ID_1568256292" TREE_ID="ID_1264174165">
<node ID="ID_1562874415" TREE_ID="ID_1488369061"/>
</node>
</node>
<node TEXT="The instrument cluster shall transition to the safe state within 50ms, if an unrequested telltale is displayed for more than 100 ms" STYLE_REF="Requirement" ID="ID_1967724661" CREATED="1609623643138" MODIFIED="1610897196144">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="FSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<node ID="ID_464783880" TREE_ID="ID_1284231708"/>
<node ID="ID_1234093641" TREE_ID="ID_205232490">
<node ID="ID_1721681830" TREE_ID="ID_499334358"/>
</node>
<node TEXT="All Inputs the Cluster controller needs to decide whether a un requested telltale is displayed shall be E2E protected" STYLE_REF="Requirement" ID="ID_142142357" CREATED="1610654302938" MODIFIED="1610897196145">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Allocation" VALUE="Not Allocated"/>
</node>
<node TEXT="The Instrument Cluster shall determine, if a not requested telltale is displayed for more than 100ms" STYLE_REF="Requirement" ID="ID_1824391227" CREATED="1610203034090" MODIFIED="1610897196146">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Allocation" VALUE="Cluster Controller"/>
</node>
<node TEXT="If a unrequested telltale is shown for more than 100ms the instrument cluster shall transition the system to the safe state by not triggering the external watchdog" STYLE_REF="Requirement" ID="ID_1623141656" CREATED="1610660961446" MODIFIED="1610897196147">
<attribute_layout NAME_WIDTH="150 pt"/>
<attribute NAME="Type" VALUE="TSR"/>
<attribute NAME="ASIL" VALUE="B"/>
<attribute NAME="Allocation" VALUE="Telltale-requester"/>
</node>
</node>
<node ID="ID_1771819379" TREE_ID="ID_922972509">
<node ID="ID_1372264395" TREE_ID="ID_1337523371">
<node ID="ID_851857056" TREE_ID="ID_865269483"/>
<node ID="ID_60352073" TREE_ID="ID_1226012594"/>
<node ID="ID_1148423018" TREE_ID="ID_322365118"/>
</node>
<node ID="ID_1374235407" TREE_ID="ID_190273872"/>
<node ID="ID_66701131" TREE_ID="ID_205232490">
<node ID="ID_139490740" TREE_ID="ID_499334358"/>
</node>
<node ID="ID_1797976261" TREE_ID="ID_1787478473"/>
<node ID="ID_666005204" TREE_ID="ID_998490846">
<node ID="ID_1120681616" TREE_ID="ID_1409122909"/>
<node ID="ID_150284297" TREE_ID="ID_1337523371">
<node ID="ID_149104298" TREE_ID="ID_865269483"/>
<node ID="ID_530521654" TREE_ID="ID_1226012594"/>
<node ID="ID_1019504250" TREE_ID="ID_322365118"/>
</node>
<node ID="ID_10230674" TREE_ID="ID_1266688002"/>
</node>
</node>
<node ID="ID_401343946" TREE_ID="ID_1847240964">
<node ID="ID_1915391624" TREE_ID="ID_1563888254"/>
<node ID="ID_508110714" TREE_ID="ID_672059647">
<node ID="ID_1098739327" TREE_ID="ID_1913387794"/>
</node>
<node ID="ID_1935060625" TREE_ID="ID_1936307008">
<node ID="ID_665909250" TREE_ID="ID_217149453"/>
</node>
<node ID="ID_1990550384" TREE_ID="ID_1385530942">
<node ID="ID_1171596679" TREE_ID="ID_1562526711"/>
</node>
</node>
</node>
<node TEXT="Schematics" POSITION="left" ID="ID_978806181" CREATED="1613405528934" MODIFIED="1613405539459">
<edge COLOR="#7c7c00"/>
<node TEXT="Block Diagram" ID="ID_1033798428" CREATED="1613407435806" MODIFIED="1613407440809">
<node TEXT="Block_Diagram.png" ID="ID_423120046" CREATED="1613407410936" MODIFIED="1613407447776">
<hook URI="Telltale_concept_files/Block_Diagram.png" SIZE="0.9478673" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="Sequence Diagram" ID="ID_381179464" CREATED="1613409316160" MODIFIED="1613409323142">
<node TEXT="Sequence_Diagram.png" ID="ID_781270333" CREATED="1613409337309" MODIFIED="1613409337309">
<hook URI="Telltale_concept_files/Sequence_Diagram.png" SIZE="0.5314438" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="Architecture" POSITION="left" ID="ID_1988403535" CREATED="1609881073321" MODIFIED="1610703679766" HGAP_QUANTITY="77 pt" VSHIFT_QUANTITY="217.49999 pt">
<edge COLOR="#0000ff"/>
<node TEXT="System Architectural Elements" ID="ID_647993701" CREATED="1609881262680" MODIFIED="1610703679766">
<node TEXT="Telltale-requester" GLOBALLY_VISIBLE="true" ALIAS="Sys:Telltale-requester" ID="ID_176572829" CREATED="1609881457571" MODIFIED="1610703679766">
<attribute_layout NAME_WIDTH="150 pt"/>
</node>
<node TEXT="Cluster Controller" ID="ID_1992686079" CREATED="1609881092272" MODIFIED="1610703679766"/>
<node TEXT="Display" ID="ID_1852933542" CREATED="1609881244846" MODIFIED="1610703679767"/>
<node TEXT="Watchdog" ID="ID_1997024973" CREATED="1609881274280" MODIFIED="1610703679767"/>
<node TEXT="Backlight" ID="ID_964016906" CREATED="1613404054705" MODIFIED="1613404057375"/>
</node>
<node TEXT="SW Architectural Elements" ID="ID_1297553272" CREATED="1609881131483" MODIFIED="1610703679767">
<node TEXT="Safety-Signal-source" ID="ID_1659037005" CREATED="1609881203148" MODIFIED="1610703679767"/>
<node TEXT="Safety-App" ID="ID_288712896" CREATED="1609881213584" MODIFIED="1613404557676"/>
<node TEXT="QT-Application" ID="ID_1100078027" CREATED="1609881218794" MODIFIED="1613404563025"/>
<node TEXT="Kernel" ID="ID_531273097" CREATED="1610125811665" MODIFIED="1610703679768"/>
</node>
<node TEXT="HW Architectural Elements" ID="ID_983665653" CREATED="1610478772917" MODIFIED="1610703679768">
<node TEXT="Dummy" ID="ID_1264197492" CREATED="1610478968566" MODIFIED="1610703679768"/>
</node>
</node>
<node TEXT="Source code monitoring" POSITION="left" ID="ID_197895921" CREATED="1610823383222" MODIFIED="1610880288222" HGAP_QUANTITY="7.25 pt" VSHIFT_QUANTITY="35.25 pt">
<edge COLOR="#00ff00"/>
<attribute_layout NAME_WIDTH="69 pt" VALUE_WIDTH="248.99999 pt"/>
<attribute NAME="Github link" VALUE="https://github.com/Jochen-Kall/Safety-app/"/>
<attribute NAME="revision" VALUE="8db75d886c915efc16e481e3fb63a09fd6e10eb6"/>
<node TEXT="Local Repository" ID="ID_1158912197" CREATED="1610880491236" MODIFIED="1610881409679">
<node TEXT="Safety-app" ID="ID_302688013" CREATED="1611330979915" MODIFIED="1611330979915" LINK="../../Safety-app/"/>
</node>
<node TEXT="files" ID="ID_608165453" CREATED="1610880473633" MODIFIED="1610880475535">
<node TEXT="Safety-signal-source.c" ID="ID_1396962989" CREATED="1611330996065" MODIFIED="1611330996065" LINK="../../Safety-app/Safety-signal-source.c"/>
<node TEXT="control-app.c" ID="ID_1717445163" CREATED="1611330996065" MODIFIED="1611330996065" LINK="../../Safety-app/control-app.c"/>
<node TEXT="safety-app.c" ID="ID_1170074676" CREATED="1611330996065" MODIFIED="1611330996065" LINK="../../Safety-app/safety-app.c"/>
</node>
</node>
</node>
</map>
