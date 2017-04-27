<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="yes" active="yes"/>
<layer number="101" name="Patch_Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="102" name="Mittellin" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="Stiffner" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="7" fill="1" visible="yes" active="yes"/>
<layer number="105" name="Beschreib" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="BGA-Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="BD-Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tBridges" color="7" fill="1" visible="yes" active="yes"/>
<layer number="109" name="tBPL" color="7" fill="1" visible="yes" active="yes"/>
<layer number="110" name="bBPL" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="MPL" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="ReferenceLS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="114" name="Badge_Outline" color="7" fill="1" visible="yes" active="yes"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="7" fill="1" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="sName" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bPlace" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="218" name="218bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="219" name="219bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="220" name="220bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="221" name="221bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="222" name="222bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="223" name="223bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="224" name="224bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="Eagle3D_PG1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="232" name="Eagle3D_PG2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="233" name="Eagle3D_PG3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="7" fill="1" visible="yes" active="yes"/>
<layer number="251" name="SMDround" color="7" fill="1" visible="yes" active="yes"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="russian-nixies">
<description>&lt;b&gt;Russian IN series nixie tubes&lt;/b&gt;&lt;br&gt;&lt;br&gt;

Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Measurements taken from nixies in my collection
&lt;li&gt;http://www.tube-tester.com
&lt;/ul&gt;&lt;br&gt;
&lt;author&gt;Created by p.s.troost@student.tue.nl&lt;/author&gt;</description>
<packages>
<package name="IN-14">
<wire x1="-7.62" y1="-0.1588" x2="7.6201" y2="0" width="0.254" layer="21" curve="-180"/>
<circle x="0" y="0" radius="8.8744" width="0.254" layer="21"/>
<pad name="A" x="0" y="-6.1899" drill="0.84"/>
<pad name="LHDP" x="2.8766" y="-5.4809" drill="0.84"/>
<pad name="0" x="5.0942" y="-3.5163" drill="0.84"/>
<pad name="9" x="6.1448" y="-0.7461" drill="0.84"/>
<pad name="8" x="5.7877" y="2.195" drill="0.84"/>
<pad name="7" x="4.1047" y="4.6332" drill="0.84"/>
<pad name="6" x="1.4813" y="6.0101" drill="0.84"/>
<pad name="5" x="-1.4813" y="6.0101" drill="0.84"/>
<pad name="4" x="-4.1047" y="4.6332" drill="0.84"/>
<pad name="3" x="-5.7877" y="2.195" drill="0.84"/>
<pad name="2" x="-6.1448" y="-0.7461" drill="0.84"/>
<pad name="1" x="-5.0942" y="-3.5163" drill="0.84"/>
<pad name="RHDP" x="-2.8766" y="-5.4809" drill="0.84"/>
<text x="11.2713" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="IN-14">
<wire x1="-5.08" y1="-13.335" x2="-5.08" y2="10.795" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-13.335" x2="7.62" y2="-13.335" width="0.4064" layer="94" curve="180"/>
<wire x1="7.62" y1="-13.335" x2="7.62" y2="10.795" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="10.795" x2="7.62" y2="10.795" width="0.4064" layer="94" curve="-180"/>
<text x="-2.54" y="18.415" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="10.16" visible="pin" length="short"/>
<pin name="2" x="-7.62" y="7.62" visible="pin" length="short"/>
<pin name="3" x="-7.62" y="5.08" visible="pin" length="short"/>
<pin name="4" x="-7.62" y="2.54" visible="pin" length="short"/>
<pin name="5" x="-7.62" y="0" visible="pin" length="short"/>
<pin name="6" x="-7.62" y="-2.54" visible="pin" length="short"/>
<pin name="7" x="-7.62" y="-5.08" visible="pin" length="short"/>
<pin name="8" x="-7.62" y="-7.62" visible="pin" length="short"/>
<pin name="9" x="-7.62" y="-10.16" visible="pin" length="short"/>
<pin name="0" x="-7.62" y="-12.7" visible="pin" length="short"/>
<pin name="RHDP" x="10.16" y="-12.7" visible="pin" length="short" rot="R180"/>
<pin name="A" x="10.16" y="-2.54" visible="pin" length="short" rot="R180"/>
<pin name="LHDP" x="10.16" y="10.16" visible="pin" length="short" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="IN-14" prefix="N">
<description>IN-14: medium numeric &lt;b&gt;frontview&lt;/b&gt; nixie tube</description>
<gates>
<gate name="G$1" symbol="IN-14" x="0" y="2.54"/>
</gates>
<devices>
<device name="" package="IN-14">
<connects>
<connect gate="G$1" pin="0" pad="0"/>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="LHDP" pad="LHDP"/>
<connect gate="G$1" pin="RHDP" pad="RHDP"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X07">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0.635" x2="-8.89" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-8.9662" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-8.89" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="-5.334" y1="-0.254" x2="-4.826" y2="0.254" layer="51"/>
<rectangle x1="-7.874" y1="-0.254" x2="-7.366" y2="0.254" layer="51"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
</package>
<package name="1X07/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-8.89" y1="-1.905" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0.635" x2="-8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="6.985" x2="-7.62" y2="1.27" width="0.762" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="6.985" x2="-5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.985" x2="5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-1.905" x2="8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0.635" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="6.985" x2="7.62" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-7.62" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-9.525" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="10.795" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-8.001" y1="0.635" x2="-7.239" y2="1.143" layer="21"/>
<rectangle x1="-5.461" y1="0.635" x2="-4.699" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="4.699" y1="0.635" x2="5.461" y2="1.143" layer="21"/>
<rectangle x1="7.239" y1="0.635" x2="8.001" y2="1.143" layer="21"/>
<rectangle x1="-8.001" y1="-2.921" x2="-7.239" y2="-1.905" layer="21"/>
<rectangle x1="-5.461" y1="-2.921" x2="-4.699" y2="-1.905" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
<rectangle x1="4.699" y1="-2.921" x2="5.461" y2="-1.905" layer="21"/>
<rectangle x1="7.239" y1="-2.921" x2="8.001" y2="-1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD7">
<wire x1="-6.35" y1="-10.16" x2="1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="1.27" y2="10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="10.16" x2="-6.35" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="10.16" x2="-6.35" y2="-10.16" width="0.4064" layer="94"/>
<text x="-6.35" y="10.795" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X7" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD7" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X07">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X07/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="nixx">
<description>Generated from &lt;b&gt;nixx.sch&lt;/b&gt;&lt;p&gt;
by exp-lbrs.ulp</description>
<packages>
<package name="SOT323">
<description>&lt;b&gt;Small Outline Transistor&lt;/b&gt;</description>
<wire x1="-1" y1="-0.55" x2="1" y2="-0.55" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.55" x2="1" y2="0.55" width="0.2032" layer="21"/>
<wire x1="1" y1="0.55" x2="-1" y2="0.55" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.55" x2="-1" y2="-0.55" width="0.2032" layer="21"/>
<rectangle x1="-0.15" y1="0.65" x2="0.15" y2="1.2" layer="51"/>
<rectangle x1="-0.8" y1="-1.2" x2="-0.5" y2="-0.65" layer="51"/>
<rectangle x1="0.5" y1="-1.2" x2="0.8" y2="-0.65" layer="51"/>
<smd name="3" x="0" y="0.9" dx="0.5" dy="1" layer="1"/>
<smd name="1" x="-0.65" y="-0.9" dx="0.5" dy="1" layer="1"/>
<smd name="2" x="0.65" y="-0.9" dx="0.5" dy="1" layer="1"/>
<text x="1.225" y="0.03" size="1.016" layer="25">&gt;NAME</text>
<text x="1.225" y="-1.33" size="1.016" layer="27">&gt;VALUE</text>
</package>
<package name="1X07">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0.635" x2="-8.89" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="-7.874" y1="-0.254" x2="-7.366" y2="0.254" layer="51"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-8.9662" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-8.89" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="TQFP32-08">
<description>&lt;B&gt;Thin Plasic Quad Flat Package&lt;/B&gt; Grid 0.8 mm</description>
<circle x="-2.7432" y="2.7432" radius="0.3592" width="0.1524" layer="21"/>
<wire x1="3.505" y1="3.505" x2="3.505" y2="-3.505" width="0.1524" layer="21"/>
<wire x1="3.505" y1="-3.505" x2="-3.505" y2="-3.505" width="0.1524" layer="21"/>
<wire x1="-3.505" y1="-3.505" x2="-3.505" y2="3.15" width="0.1524" layer="21"/>
<wire x1="-3.15" y1="3.505" x2="3.505" y2="3.505" width="0.1524" layer="21"/>
<wire x1="-3.15" y1="3.505" x2="-3.505" y2="3.15" width="0.1524" layer="21"/>
<rectangle x1="-4.5466" y1="2.5714" x2="-3.556" y2="3.0286" layer="51"/>
<rectangle x1="-4.5466" y1="1.7714" x2="-3.556" y2="2.2286" layer="51"/>
<rectangle x1="-4.5466" y1="0.9714" x2="-3.556" y2="1.4286" layer="51"/>
<rectangle x1="-4.5466" y1="0.1714" x2="-3.556" y2="0.6286" layer="51"/>
<rectangle x1="-4.5466" y1="-0.6286" x2="-3.556" y2="-0.1714" layer="51"/>
<rectangle x1="-4.5466" y1="-1.4286" x2="-3.556" y2="-0.9714" layer="51"/>
<rectangle x1="-4.5466" y1="-2.2286" x2="-3.556" y2="-1.7714" layer="51"/>
<rectangle x1="-4.5466" y1="-3.0286" x2="-3.556" y2="-2.5714" layer="51"/>
<rectangle x1="-3.0286" y1="-4.5466" x2="-2.5714" y2="-3.556" layer="51"/>
<rectangle x1="-2.2286" y1="-4.5466" x2="-1.7714" y2="-3.556" layer="51"/>
<rectangle x1="-1.4286" y1="-4.5466" x2="-0.9714" y2="-3.556" layer="51"/>
<rectangle x1="-0.6286" y1="-4.5466" x2="-0.1714" y2="-3.556" layer="51"/>
<rectangle x1="0.1714" y1="-4.5466" x2="0.6286" y2="-3.556" layer="51"/>
<rectangle x1="0.9714" y1="-4.5466" x2="1.4286" y2="-3.556" layer="51"/>
<rectangle x1="1.7714" y1="-4.5466" x2="2.2286" y2="-3.556" layer="51"/>
<rectangle x1="2.5714" y1="-4.5466" x2="3.0286" y2="-3.556" layer="51"/>
<rectangle x1="3.556" y1="-3.0286" x2="4.5466" y2="-2.5714" layer="51"/>
<rectangle x1="3.556" y1="-2.2286" x2="4.5466" y2="-1.7714" layer="51"/>
<rectangle x1="3.556" y1="-1.4286" x2="4.5466" y2="-0.9714" layer="51"/>
<rectangle x1="3.556" y1="-0.6286" x2="4.5466" y2="-0.1714" layer="51"/>
<rectangle x1="3.556" y1="0.1714" x2="4.5466" y2="0.6286" layer="51"/>
<rectangle x1="3.556" y1="0.9714" x2="4.5466" y2="1.4286" layer="51"/>
<rectangle x1="3.556" y1="1.7714" x2="4.5466" y2="2.2286" layer="51"/>
<rectangle x1="3.556" y1="2.5714" x2="4.5466" y2="3.0286" layer="51"/>
<rectangle x1="2.5714" y1="3.556" x2="3.0286" y2="4.5466" layer="51"/>
<rectangle x1="1.7714" y1="3.556" x2="2.2286" y2="4.5466" layer="51"/>
<rectangle x1="0.9714" y1="3.556" x2="1.4286" y2="4.5466" layer="51"/>
<rectangle x1="0.1714" y1="3.556" x2="0.6286" y2="4.5466" layer="51"/>
<rectangle x1="-0.6286" y1="3.556" x2="-0.1714" y2="4.5466" layer="51"/>
<rectangle x1="-1.4286" y1="3.556" x2="-0.9714" y2="4.5466" layer="51"/>
<rectangle x1="-2.2286" y1="3.556" x2="-1.7714" y2="4.5466" layer="51"/>
<rectangle x1="-3.0286" y1="3.556" x2="-2.5714" y2="4.5466" layer="51"/>
<smd name="1" x="-4.2926" y="2.8" dx="1.27" dy="0.5588" layer="1"/>
<smd name="2" x="-4.2926" y="2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="3" x="-4.2926" y="1.2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="4" x="-4.2926" y="0.4" dx="1.27" dy="0.5588" layer="1"/>
<smd name="5" x="-4.2926" y="-0.4" dx="1.27" dy="0.5588" layer="1"/>
<smd name="6" x="-4.2926" y="-1.2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="7" x="-4.2926" y="-2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="8" x="-4.2926" y="-2.8" dx="1.27" dy="0.5588" layer="1"/>
<smd name="9" x="-2.8" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="10" x="-2" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="11" x="-1.2" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="12" x="-0.4" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="13" x="0.4" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="14" x="1.2" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="15" x="2" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="16" x="2.8" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="17" x="4.2926" y="-2.8" dx="1.27" dy="0.5588" layer="1"/>
<smd name="18" x="4.2926" y="-2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="19" x="4.2926" y="-1.2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="20" x="4.2926" y="-0.4" dx="1.27" dy="0.5588" layer="1"/>
<smd name="21" x="4.2926" y="0.4" dx="1.27" dy="0.5588" layer="1"/>
<smd name="22" x="4.2926" y="1.2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="23" x="4.2926" y="2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="24" x="4.2926" y="2.8" dx="1.27" dy="0.5588" layer="1"/>
<smd name="25" x="2.8" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="26" x="2" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="27" x="1.2" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="28" x="0.4" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="29" x="-0.4" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="30" x="-1.2" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="31" x="-2" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="32" x="-2.8" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<text x="-2.7686" y="5.08" size="0.8128" layer="25">&gt;NAME</text>
<text x="-3.0226" y="-1.27" size="0.8128" layer="27">&gt;VALUE</text>
</package>
<package name="LQFP-32">
<description>&lt;b&gt;Quad FLat Pack&lt;/b&gt;&lt;p&gt;
RFMicro Device TQFP / LQFP-32 see IPC-SQR.LBR SQFP 5x5-32</description>
<circle x="-1.25" y="-1.25" radius="0.5" width="0.254" layer="21"/>
<wire x1="-4.4" y1="4.4" x2="4.4" y2="4.4" width="0.2" layer="39"/>
<wire x1="4.4" y1="4.4" x2="4.4" y2="-4.4" width="0.2" layer="39"/>
<wire x1="-4.4" y1="-4.4" x2="-4.4" y2="4.4" width="0.2" layer="39"/>
<wire x1="4.4" y1="-4.4" x2="-4.4" y2="-4.4" width="0.2" layer="39"/>
<wire x1="-2.4" y1="-2.4" x2="2.4" y2="-2.4" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-2.4" x2="2.4" y2="2.4" width="0.2032" layer="51"/>
<wire x1="2.4" y1="2.4" x2="-2.4" y2="2.4" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="2.4" x2="-2.4" y2="-2.4" width="0.2032" layer="51"/>
<wire x1="-2.2" y1="2.2" x2="2.2" y2="2.2" width="0.2032" layer="21"/>
<wire x1="2.2" y1="2.2" x2="2.2" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="2.2" y1="-2.2" x2="-1.819" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="-2.2" y1="-1.8132" x2="-2.2" y2="2.2" width="0.2032" layer="21"/>
<wire x1="-1.819" y1="-2.2" x2="-2.2" y2="-1.8132" width="0.2032" layer="21"/>
<rectangle x1="-1.9" y1="-3.6" x2="-1.6" y2="-2.45" layer="51"/>
<rectangle x1="-1.4" y1="-3.6" x2="-1.1" y2="-2.45" layer="51"/>
<rectangle x1="-0.9" y1="-3.6" x2="-0.6" y2="-2.45" layer="51"/>
<rectangle x1="-0.4" y1="-3.6" x2="-0.1" y2="-2.45" layer="51"/>
<rectangle x1="0.1" y1="-3.6" x2="0.4" y2="-2.45" layer="51"/>
<rectangle x1="0.6" y1="-3.6" x2="0.9" y2="-2.45" layer="51"/>
<rectangle x1="1.1" y1="-3.6" x2="1.4" y2="-2.45" layer="51"/>
<rectangle x1="1.6" y1="-3.6" x2="1.9" y2="-2.45" layer="51"/>
<rectangle x1="2.45" y1="-1.9" x2="3.6" y2="-1.6" layer="51"/>
<rectangle x1="2.45" y1="-1.4" x2="3.6" y2="-1.1" layer="51"/>
<rectangle x1="2.45" y1="-0.9" x2="3.6" y2="-0.6" layer="51"/>
<rectangle x1="2.45" y1="-0.4" x2="3.6" y2="-0.1" layer="51"/>
<rectangle x1="2.45" y1="0.1" x2="3.6" y2="0.4" layer="51"/>
<rectangle x1="2.45" y1="0.6" x2="3.6" y2="0.9" layer="51"/>
<rectangle x1="2.45" y1="1.1" x2="3.6" y2="1.4" layer="51"/>
<rectangle x1="2.45" y1="1.6" x2="3.6" y2="1.9" layer="51"/>
<rectangle x1="1.6" y1="2.45" x2="1.9" y2="3.6" layer="51"/>
<rectangle x1="1.1" y1="2.45" x2="1.4" y2="3.6" layer="51"/>
<rectangle x1="0.6" y1="2.45" x2="0.9" y2="3.6" layer="51"/>
<rectangle x1="0.1" y1="2.45" x2="0.4" y2="3.6" layer="51"/>
<rectangle x1="-0.4" y1="2.45" x2="-0.1" y2="3.6" layer="51"/>
<rectangle x1="-0.9" y1="2.45" x2="-0.6" y2="3.6" layer="51"/>
<rectangle x1="-1.4" y1="2.45" x2="-1.1" y2="3.6" layer="51"/>
<rectangle x1="-1.9" y1="2.45" x2="-1.6" y2="3.6" layer="51"/>
<rectangle x1="-3.6" y1="1.6" x2="-2.45" y2="1.9" layer="51"/>
<rectangle x1="-3.6" y1="1.1" x2="-2.45" y2="1.4" layer="51"/>
<rectangle x1="-3.6" y1="0.6" x2="-2.45" y2="0.9" layer="51"/>
<rectangle x1="-3.6" y1="0.1" x2="-2.45" y2="0.4" layer="51"/>
<rectangle x1="-3.6" y1="-0.4" x2="-2.45" y2="-0.1" layer="51"/>
<rectangle x1="-3.6" y1="-0.9" x2="-2.45" y2="-0.6" layer="51"/>
<rectangle x1="-3.6" y1="-1.4" x2="-2.45" y2="-1.1" layer="51"/>
<rectangle x1="-3.6" y1="-1.9" x2="-2.45" y2="-1.6" layer="51"/>
<rectangle x1="-1" y1="-1" x2="1" y2="1" layer="35"/>
<smd name="1" x="-1.75" y="-3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="2" x="-1.25" y="-3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="3" x="-0.75" y="-3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="4" x="-0.25" y="-3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="5" x="0.25" y="-3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="6" x="0.75" y="-3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="7" x="1.25" y="-3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="8" x="1.75" y="-3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="9" x="3.1" y="-1.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="10" x="3.1" y="-1.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="11" x="3.1" y="-0.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="12" x="3.1" y="-0.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="13" x="3.1" y="0.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="14" x="3.1" y="0.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="15" x="3.1" y="1.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="16" x="3.1" y="1.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="17" x="1.75" y="3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="18" x="1.25" y="3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="19" x="0.75" y="3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="20" x="0.25" y="3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="21" x="-0.25" y="3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="22" x="-0.75" y="3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="23" x="-1.25" y="3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="24" x="-1.75" y="3.1" dx="0.3" dy="1.6" layer="1"/>
<smd name="25" x="-3.1" y="1.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="26" x="-3.1" y="1.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="27" x="-3.1" y="0.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="28" x="-3.1" y="0.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="29" x="-3.1" y="-0.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="30" x="-3.1" y="-0.75" dx="1.6" dy="0.3" layer="1"/>
<smd name="31" x="-3.1" y="-1.25" dx="1.6" dy="0.3" layer="1"/>
<smd name="32" x="-3.1" y="-1.75" dx="1.6" dy="0.3" layer="1"/>
<text x="-4.445" y="-3.81" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.715" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="3528-COMMON-ANODE">
<wire x1="-2.6" y1="1.6" x2="2.6" y2="1.6" width="0.127" layer="39"/>
<wire x1="2.6" y1="1.6" x2="2.6" y2="-1.6" width="0.127" layer="39"/>
<wire x1="2.6" y1="-1.6" x2="-2.6" y2="-1.6" width="0.127" layer="39"/>
<wire x1="-2.6" y1="-1.6" x2="-2.6" y2="1.6" width="0.127" layer="39"/>
<wire x1="-1.75" y1="1.4" x2="1.75" y2="1.4" width="0.127" layer="51"/>
<wire x1="1.75" y1="1.4" x2="1.75" y2="-1.4" width="0.127" layer="51"/>
<wire x1="1.75" y1="-1.4" x2="-1.75" y2="-1.4" width="0.127" layer="51"/>
<wire x1="-1.75" y1="-1.4" x2="-1.75" y2="1.4" width="0.127" layer="51"/>
<wire x1="-0.79375" y1="1.5875" x2="-0.8" y2="0.3" width="0.127" layer="43"/>
<wire x1="-0.8" y1="0.3" x2="-2.6" y2="0.3" width="0.127" layer="43"/>
<wire x1="-2.6" y1="0.3" x2="-2.6" y2="-0.3" width="0.127" layer="43"/>
<wire x1="-2.6" y1="-0.3" x2="-0.8" y2="-0.3" width="0.127" layer="43"/>
<wire x1="-0.8" y1="-0.3" x2="-0.79375" y2="-1.5875" width="0.127" layer="43"/>
<wire x1="-0.79375" y1="-1.5875" x2="0.79375" y2="-1.5875" width="0.127" layer="43"/>
<wire x1="0.79375" y1="-1.5875" x2="0.8" y2="-0.3" width="0.127" layer="43"/>
<wire x1="0.8" y1="-0.3" x2="2.6" y2="-0.3" width="0.127" layer="43"/>
<wire x1="2.6" y1="-0.3" x2="2.6" y2="0.3" width="0.127" layer="43"/>
<wire x1="2.6" y1="0.3" x2="0.8" y2="0.3" width="0.127" layer="43"/>
<wire x1="0.8" y1="0.3" x2="0.79375" y2="1.5875" width="0.127" layer="43"/>
<wire x1="0.79375" y1="1.5875" x2="-0.79375" y2="1.5875" width="0.127" layer="43"/>
<wire x1="-1.75" y1="1.4" x2="1.75" y2="1.4" width="0.127" layer="21"/>
<wire x1="-1.75" y1="-1.4" x2="1.75" y2="-1.4" width="0.127" layer="21"/>
<wire x1="-1.75" y1="0.3" x2="-1.75" y2="-0.3" width="0.127" layer="21"/>
<wire x1="1.75" y1="0.3" x2="1.75" y2="-0.3" width="0.127" layer="21"/>
<smd name="1" x="1.55" y="0.85" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="2" x="1.55" y="-0.85" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="3" x="-1.55" y="0.85" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="4" x="-1.55" y="-0.85" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="NPN">
<rectangle x1="-0.254" y1="-2.54" x2="0.508" y2="2.54" layer="94"/>
<wire x1="2.54" y1="2.54" x2="0.508" y2="1.524" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0.508" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="1.778" y1="-1.524" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="1.27" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.778" y2="-1.524" width="0.1524" layer="94"/>
<pin name="B" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="2.54" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="E" x="2.54" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<text x="-10.16" y="7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="5.08" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="+180V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-0.635" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-0.635" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-1.27" y2="0.635" width="0.254" layer="94"/>
<wire x1="1.27" y1="0.635" x2="0" y2="2.54" width="0.254" layer="94"/>
<pin name="+180V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
</symbol>
<symbol name="PINHD7">
<wire x1="-6.35" y1="-10.16" x2="1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="1.27" y2="10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="10.16" x2="-6.35" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="10.16" x2="-6.35" y2="-10.16" width="0.4064" layer="94"/>
<pin name="1" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<text x="-6.35" y="10.795" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="STM32F042K6">
<wire x1="0" y1="0" x2="0" y2="-68.58" width="0.6096" layer="94"/>
<wire x1="35.56" y1="0" x2="35.56" y2="-68.58" width="0.6096" layer="94"/>
<wire x1="0" y1="0" x2="35.56" y2="0" width="0.6096" layer="94"/>
<wire x1="0" y1="-68.58" x2="35.56" y2="-68.58" width="0.6096" layer="94"/>
<pin name="PB8" x="38.1" y="-66.04" length="short" rot="R180"/>
<pin name="NRST" x="-2.54" y="-25.4" length="short"/>
<pin name="PA0" x="38.1" y="-2.54" length="short" rot="R180"/>
<pin name="PA1" x="38.1" y="-5.08" length="short" rot="R180"/>
<pin name="PA2" x="38.1" y="-7.62" length="short" rot="R180"/>
<pin name="PA3" x="38.1" y="-10.16" length="short" rot="R180"/>
<pin name="PA4" x="38.1" y="-12.7" length="short" rot="R180"/>
<pin name="PA5" x="38.1" y="-15.24" length="short" rot="R180"/>
<pin name="PA6" x="38.1" y="-17.78" length="short" rot="R180"/>
<pin name="PA7" x="38.1" y="-20.32" length="short" rot="R180"/>
<pin name="PA8" x="38.1" y="-25.4" length="short" rot="R180"/>
<pin name="PA9" x="38.1" y="-27.94" length="short" rot="R180"/>
<pin name="PA10" x="38.1" y="-30.48" length="short" rot="R180"/>
<pin name="PA11" x="38.1" y="-33.02" length="short" rot="R180"/>
<pin name="PA12" x="38.1" y="-35.56" length="short" rot="R180"/>
<pin name="PA13/SWDIO" x="38.1" y="-38.1" length="short" rot="R180"/>
<pin name="PA14/SWCLK" x="38.1" y="-40.64" length="short" rot="R180"/>
<pin name="PA15" x="38.1" y="-43.18" length="short" rot="R180"/>
<pin name="PB0" x="38.1" y="-48.26" length="short" rot="R180"/>
<pin name="PB1" x="38.1" y="-50.8" length="short" rot="R180"/>
<pin name="PB3" x="38.1" y="-53.34" length="short" rot="R180"/>
<pin name="PB4" x="38.1" y="-55.88" length="short" rot="R180"/>
<pin name="PB5" x="38.1" y="-58.42" length="short" rot="R180"/>
<pin name="PB6" x="38.1" y="-60.96" length="short" rot="R180"/>
<pin name="PB7" x="38.1" y="-63.5" length="short" rot="R180"/>
<pin name="PF0/OSC_IN" x="-2.54" y="-48.26" length="short"/>
<pin name="PF1/OSC_OUT" x="-2.54" y="-50.8" length="short"/>
<pin name="VDD" x="-2.54" y="-2.54" length="short"/>
<pin name="VDDA" x="-2.54" y="-5.08" length="short"/>
<pin name="VSS" x="-2.54" y="-66.04" length="short"/>
<text x="2.54" y="2.54" size="1.27" layer="95" align="top-left">&gt;NAME</text>
<text x="2.54" y="-76.2" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="WL-SBTW">
<description>3 LED with common Anode</description>
<wire x1="4.23" y1="-9" x2="5.73" y2="-9" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-2.54" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-10.16" x2="2.54" y2="-7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="-7.62" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="10.16" x2="-2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="7.62" x2="-2.54" y2="10.16" width="0.254" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="-7.62" y2="0" width="0.254" layer="94"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-2.54" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-7.62" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="2.54" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="-10.16" width="0.254" layer="94"/>
<wire x1="2.54" y1="10.16" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="4.23" y1="-1.4" x2="5.73" y2="-1.4" width="0.254" layer="94"/>
<wire x1="4.33" y1="6.4" x2="5.83" y2="6.4" width="0.254" layer="94"/>
<wire x1="-12.38" y1="-2.87" x2="-10.88" y2="-2.87" width="0.254" layer="94"/>
<wire x1="-11.61" y1="-3.64" x2="-11.61" y2="-2.14" width="0.254" layer="94"/>
<pin name="A" x="-10.16" y="0" length="short"/>
<pin name="BC" x="5.08" y="-7.62" length="short" rot="R180"/>
<pin name="GC" x="5.08" y="7.62" length="short" rot="R180"/>
<pin name="RC" x="5.08" y="0" length="short" rot="R180"/>
<text x="-3.69" y="11.842" size="1.27" layer="95">&gt;NAME</text>
<text x="-3.69" y="-13.968" size="1.27" layer="96">&gt;VALUE</text>
<text x="0.6" y="4.9" size="1.27" layer="94">G</text>
<text x="0.7" y="-3" size="1.27" layer="94">R</text>
<text x="0.8" y="-10.5" size="1.27" layer="94">B</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BF820" prefix="Q" uservalue="yes">
<description>&lt;b&gt;NPN TRANSISTOR&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="NPN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT323">
<connects>
<connect gate="A" pin="B" pad="1"/>
<connect gate="A" pin="C" pad="3"/>
<connect gate="A" pin="E" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+180V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+180V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-1X7" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD7" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X07">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="STM32F042K6">
<gates>
<gate name="G$1" symbol="STM32F042K6" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TQFP32-08">
<connects>
<connect gate="G$1" pin="NRST" pad="4"/>
<connect gate="G$1" pin="PA0" pad="6"/>
<connect gate="G$1" pin="PA1" pad="7"/>
<connect gate="G$1" pin="PA10" pad="20"/>
<connect gate="G$1" pin="PA11" pad="21"/>
<connect gate="G$1" pin="PA12" pad="22"/>
<connect gate="G$1" pin="PA13/SWDIO" pad="23"/>
<connect gate="G$1" pin="PA14/SWCLK" pad="24"/>
<connect gate="G$1" pin="PA15" pad="25"/>
<connect gate="G$1" pin="PA2" pad="8"/>
<connect gate="G$1" pin="PA3" pad="9"/>
<connect gate="G$1" pin="PA4" pad="10"/>
<connect gate="G$1" pin="PA5" pad="11"/>
<connect gate="G$1" pin="PA6" pad="12"/>
<connect gate="G$1" pin="PA7" pad="13"/>
<connect gate="G$1" pin="PA8" pad="18"/>
<connect gate="G$1" pin="PA9" pad="19"/>
<connect gate="G$1" pin="PB0" pad="14"/>
<connect gate="G$1" pin="PB1" pad="15"/>
<connect gate="G$1" pin="PB3" pad="26"/>
<connect gate="G$1" pin="PB4" pad="27"/>
<connect gate="G$1" pin="PB5" pad="28"/>
<connect gate="G$1" pin="PB6" pad="29"/>
<connect gate="G$1" pin="PB7" pad="30"/>
<connect gate="G$1" pin="PB8" pad="31"/>
<connect gate="G$1" pin="PF0/OSC_IN" pad="2"/>
<connect gate="G$1" pin="PF1/OSC_OUT" pad="3"/>
<connect gate="G$1" pin="VDD" pad="1 17"/>
<connect gate="G$1" pin="VDDA" pad="5"/>
<connect gate="G$1" pin="VSS" pad="16 32"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-LQFP-32" package="LQFP-32">
<connects>
<connect gate="G$1" pin="NRST" pad="4"/>
<connect gate="G$1" pin="PA0" pad="6"/>
<connect gate="G$1" pin="PA1" pad="7"/>
<connect gate="G$1" pin="PA10" pad="20"/>
<connect gate="G$1" pin="PA11" pad="21"/>
<connect gate="G$1" pin="PA12" pad="22"/>
<connect gate="G$1" pin="PA13/SWDIO" pad="23"/>
<connect gate="G$1" pin="PA14/SWCLK" pad="24"/>
<connect gate="G$1" pin="PA15" pad="25"/>
<connect gate="G$1" pin="PA2" pad="8"/>
<connect gate="G$1" pin="PA3" pad="9"/>
<connect gate="G$1" pin="PA4" pad="10"/>
<connect gate="G$1" pin="PA5" pad="11"/>
<connect gate="G$1" pin="PA6" pad="12"/>
<connect gate="G$1" pin="PA7" pad="13"/>
<connect gate="G$1" pin="PA8" pad="18"/>
<connect gate="G$1" pin="PA9" pad="19"/>
<connect gate="G$1" pin="PB0" pad="14"/>
<connect gate="G$1" pin="PB1" pad="15"/>
<connect gate="G$1" pin="PB3" pad="26"/>
<connect gate="G$1" pin="PB4" pad="27"/>
<connect gate="G$1" pin="PB5" pad="28"/>
<connect gate="G$1" pin="PB6" pad="29"/>
<connect gate="G$1" pin="PB7" pad="30"/>
<connect gate="G$1" pin="PB8" pad="31"/>
<connect gate="G$1" pin="PF0/OSC_IN" pad="2"/>
<connect gate="G$1" pin="PF1/OSC_OUT" pad="3"/>
<connect gate="G$1" pin="VDD" pad="1 17"/>
<connect gate="G$1" pin="VDDA" pad="5"/>
<connect gate="G$1" pin="VSS" pad="16 32"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RGB_LED_CA" prefix="D">
<description>&lt;b&gt;SMD full-color TOP LED
&lt;br&gt;
&lt;br&gt;
&lt;br&gt;&lt;b&gt; Characteristics
&lt;br&gt;
&lt;br&gt;&lt;/b&gt;&lt;/b&gt; Low energy consumption
&lt;br&gt; High reliability
&lt;br&gt; Low current requirement
&lt;br&gt; Fast switching
&lt;br&gt; No UV/IR radiation
&lt;br&gt; High brightness
&lt;br&gt; RGB individual control
&lt;br&gt; Compact package outline
&lt;br&gt; Black surface
&lt;br&gt;
&lt;br&gt;
&lt;br&gt;&lt;b&gt; Applications
&lt;br&gt;
&lt;br&gt;&lt;/b&gt; Flash light
&lt;br&gt; Switch indicators
&lt;br&gt; Equipments indicators
&lt;br&gt; Accent and decorative lighting
&lt;br&gt; Electronic signage
&lt;br&gt; Video displays
&lt;br&gt; Backlight for LCDs, PDAs and TVs
&lt;br&gt; Oven, microwave
&lt;br&gt; Street lighting
&lt;br&gt; Ideal for lateral coupling in light guides
&lt;br&gt;
&lt;br&gt;
&lt;br&gt;
&lt;br&gt;&lt;a href="http://katalog.we-online.de/media/images/eipal/WL-SFTW_pf2.jpg" title="Enlarge picture"&gt;
&lt;img src="http://katalog.we-online.de/media/thumbs2/eipal/thb_WL-SFTW_pf2.jpg" width="320"&gt;&lt;/a&gt;&lt;p&gt;
Details see: &lt;a href="http://katalog.we-online.de/en/led/WL-SFTW?m"&gt;http://katalog.we-online.de/en/led/WL-SFTW?m&lt;/a&gt;&lt;p&gt;

&lt;/b&gt;Updated   2015-04-10&lt;br&gt;
&lt;/b&gt;2015 (C) Wurth Elektronik</description>
<gates>
<gate name="G$1" symbol="WL-SBTW" x="0" y="0"/>
</gates>
<devices>
<device name="-150141M173100-R&amp;G&amp;B" package="3528-COMMON-ANODE">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="BC" pad="2"/>
<connect gate="G$1" pin="GC" pad="4"/>
<connect gate="G$1" pin="RC" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="joyAnalog">
<description>Generated from &lt;b&gt;joyAnalog.sch&lt;/b&gt;&lt;p&gt;
by exp-lbrs.ulp</description>
<packages>
<package name="0402-RES">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2032" y1="-0.3556" x2="0.2032" y2="0.3556" layer="21"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.889" y="0.6985" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.0795" y="-1.143" size="0.4064" layer="27">&gt;VALUE</text>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2032" y1="-0.3556" x2="0.2032" y2="0.3556" layer="21"/>
<text x="-0.889" y="0.6985" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.0795" y="-1.143" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="0603-RES">
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2286" y1="-0.381" x2="0.2286" y2="0.381" layer="21"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2286" y1="-0.381" x2="0.2286" y2="0.381" layer="21"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
</package>
<package name="0805">
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="-0.762" y="0.8255" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
<wire x1="-0.3" y1="0.6" x2="0.3" y2="0.6" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="-0.6" width="0.1524" layer="21"/>
<text x="-0.762" y="0.8255" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1206">
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.143" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.397" y="-1.524" size="0.4064" layer="27">&gt;VALUE</text>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
<text x="-1.27" y="1.143" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.397" y="-1.524" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="R2010">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-2.54" y="1.5875" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.032" size="0.4064" layer="27">&gt;VALUE</text>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-1.027" y1="1.245" x2="1.027" y2="1.245" width="0.1524" layer="21"/>
<wire x1="-1.002" y1="-1.245" x2="1.016" y2="-1.245" width="0.1524" layer="21"/>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<text x="-2.54" y="1.5875" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.032" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="R2512">
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="AXIAL-0.3">
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.3EZ">
<description>This is the "EZ" version of the standard .3" spaced resistor package.&lt;br&gt;
It has a reduced top mask to make it harder to install upside-down.</description>
<circle x="-3.81" y="0" radius="0.508" width="0" layer="29"/>
<circle x="3.81" y="0" radius="0.523634375" width="0" layer="29"/>
<circle x="-3.81" y="0" radius="1.02390625" width="0" layer="30"/>
<circle x="3.81" y="0" radius="1.04726875" width="0" layer="30"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
<circle x="-3.81" y="0" radius="0.508" width="0" layer="29"/>
<circle x="3.81" y="0" radius="0.523634375" width="0" layer="29"/>
<circle x="-3.81" y="0" radius="1.02390625" width="0" layer="30"/>
<circle x="3.81" y="0" radius="1.04726875" width="0" layer="30"/>
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.3-KIT">
<description>&lt;h3&gt;AXIAL-0.3-KIT&lt;/h3&gt;

Commonly used for 1/4W through-hole resistors. 0.3" pitch between holes.&lt;br&gt;
&lt;br&gt;

&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of the AXIAL-0.3 package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.159" y="-0.762" size="1.27" layer="21" font="vector" ratio="15">&gt;Value</text>
<polygon width="0.127" layer="30">
<vertex x="3.8201" y="-0.9449" curve="-90"/>
<vertex x="2.8652" y="-0.0152" curve="-90.011749"/>
<vertex x="3.8176" y="0.9602" curve="-90"/>
<vertex x="4.7676" y="-0.0178" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.8176" y="-0.4369" curve="-90.012891"/>
<vertex x="3.3731" y="-0.0127" curve="-90"/>
<vertex x="3.8176" y="0.4546" curve="-90"/>
<vertex x="4.2595" y="-0.0025" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-3.8075" y="-0.9525" curve="-90"/>
<vertex x="-4.7624" y="-0.0228" curve="-90.011749"/>
<vertex x="-3.81" y="0.9526" curve="-90"/>
<vertex x="-2.86" y="-0.0254" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.81" y="-0.4445" curve="-90.012891"/>
<vertex x="-4.2545" y="-0.0203" curve="-90"/>
<vertex x="-3.81" y="0.447" curve="-90"/>
<vertex x="-3.3681" y="-0.0101" curve="-90.012967"/>
</polygon>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.254" layer="21"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.159" y="-0.762" size="1.27" layer="21" font="vector" ratio="15">&gt;Value</text>
<polygon width="0.127" layer="30">
<vertex x="3.8201" y="-0.9449" curve="-90"/>
<vertex x="2.8652" y="-0.0152" curve="-90.011749"/>
<vertex x="3.8176" y="0.9602" curve="-90"/>
<vertex x="4.7676" y="-0.0178" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.8176" y="-0.4369" curve="-90.012891"/>
<vertex x="3.3731" y="-0.0127" curve="-90"/>
<vertex x="3.8176" y="0.4546" curve="-90"/>
<vertex x="4.2595" y="-0.0025" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-3.8075" y="-0.9525" curve="-90"/>
<vertex x="-4.7624" y="-0.0228" curve="-90.011749"/>
<vertex x="-3.81" y="0.9526" curve="-90"/>
<vertex x="-2.86" y="-0.0254" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.81" y="-0.4445" curve="-90.012891"/>
<vertex x="-4.2545" y="-0.0203" curve="-90"/>
<vertex x="-3.81" y="0.447" curve="-90"/>
<vertex x="-3.3681" y="-0.0101" curve="-90.012967"/>
</polygon>
</package>
<package name="AXIAL-0.5">
<description>1/2W Resistor, 0.5" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<pad name="P$1" x="-6.35" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="6.35" y="0" drill="0.9" diameter="1.8796"/>
<text x="-4.445" y="2.54" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-3.429" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
<wire x1="-4.5" y1="-1.65" x2="-4.5" y2="1.65" width="0.2032" layer="21"/>
<wire x1="-4.5" y1="1.65" x2="4.5" y2="1.65" width="0.2032" layer="21"/>
<wire x1="4.5" y1="1.65" x2="4.5" y2="-1.65" width="0.2032" layer="21"/>
<wire x1="4.5" y1="-1.65" x2="-4.5" y2="-1.65" width="0.2032" layer="21"/>
<text x="-4.445" y="2.54" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-3.429" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.4">
<description>1/4W Resistor, 0.4" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<pad name="P$1" x="-5.08" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="5.08" y="0" drill="0.9" diameter="1.8796"/>
<text x="-3.175" y="1.905" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-2.286" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
<wire x1="-3.15" y1="-1.2" x2="-3.15" y2="1.2" width="0.2032" layer="21"/>
<wire x1="-3.15" y1="1.2" x2="3.15" y2="1.2" width="0.2032" layer="21"/>
<wire x1="3.15" y1="1.2" x2="3.15" y2="-1.2" width="0.2032" layer="21"/>
<wire x1="3.15" y1="-1.2" x2="-3.15" y2="-1.2" width="0.2032" layer="21"/>
<text x="-3.175" y="1.905" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-2.286" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="1/6W-RES">
<description>1/6W Thru-hole Resistor - *UNPROVEN*</description>
<pad name="1" x="-2.5" y="0" drill="0.762"/>
<pad name="2" x="2.5" y="0" drill="0.762"/>
<text x="-1.2662" y="0.9552" size="0.6096" layer="25">&gt;NAME</text>
<text x="-1.423" y="-0.4286" size="0.8128" layer="21" ratio="15">&gt;VALUE</text>
<wire x1="-1.55" y1="0.85" x2="-1.55" y2="-0.85" width="0.2032" layer="21"/>
<wire x1="-1.55" y1="-0.85" x2="1.55" y2="-0.85" width="0.2032" layer="21"/>
<wire x1="1.55" y1="-0.85" x2="1.55" y2="0.85" width="0.2032" layer="21"/>
<wire x1="1.55" y1="0.85" x2="-1.55" y2="0.85" width="0.2032" layer="21"/>
<text x="-1.2662" y="0.9552" size="0.6096" layer="25">&gt;NAME</text>
<text x="-1.423" y="-0.4286" size="0.8128" layer="21" ratio="15">&gt;VALUE</text>
</package>
<package name="AXIAL-0.6">
<description>1W Resistor, 0.6" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<pad name="P$1" x="-7.62" y="0" drill="1.2" diameter="1.8796"/>
<pad name="P$2" x="7.62" y="0" drill="1.2" diameter="1.8796"/>
<text x="-5.715" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-4.064" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
<wire x1="-5.75" y1="-2.25" x2="-5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-5.75" y1="2.25" x2="5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="2.25" x2="5.75" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="-2.25" x2="-5.75" y2="-2.25" width="0.2032" layer="21"/>
<text x="-5.715" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-4.064" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.8">
<description>2W Resistor, 0.8" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<pad name="P$1" x="-10.16" y="0" drill="1.2" diameter="1.8796"/>
<pad name="P$2" x="10.16" y="0" drill="1.2" diameter="1.8796"/>
<text x="-7.62" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-5.969" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
<wire x1="-7.75" y1="-2.5" x2="-7.75" y2="2.5" width="0.2032" layer="21"/>
<wire x1="-7.75" y1="2.5" x2="7.75" y2="2.5" width="0.2032" layer="21"/>
<wire x1="7.75" y1="2.5" x2="7.75" y2="-2.5" width="0.2032" layer="21"/>
<wire x1="7.75" y1="-2.5" x2="-7.75" y2="-2.5" width="0.2032" layer="21"/>
<text x="-7.62" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-5.969" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="0402-CAP">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<smd name="1" x="-0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<smd name="2" x="0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<text x="-0.889" y="0.6985" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.0795" y="-1.143" size="0.4064" layer="27">&gt;VALUE</text>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="0" y1="0.0305" x2="0" y2="-0.0305" width="0.4064" layer="21"/>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<text x="-0.889" y="0.6985" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.0795" y="-1.143" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="0603-CAP">
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<wire x1="0" y1="0.027940625" x2="0" y2="-0.027940625" width="0.381" layer="21"/>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
</package>
<package name="1210">
<smd name="1" x="-1.6" y="0" dx="1.2" dy="2" layer="1"/>
<smd name="2" x="1.6" y="0" dx="1.2" dy="2" layer="1"/>
<text x="-0.8" y="0.5" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.9" y="-0.7" size="0.4064" layer="27">&gt;VALUE</text>
<wire x1="-1.6" y1="1.3" x2="1.6" y2="1.3" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.3" x2="1.6" y2="-1.3" width="0.127" layer="51"/>
<wire x1="1.6" y1="-1.3" x2="-1.6" y2="-1.3" width="0.127" layer="51"/>
<wire x1="-1.6" y1="-1.3" x2="-1.6" y2="1.3" width="0.127" layer="51"/>
<wire x1="-1.6" y1="1.3" x2="1.6" y2="1.3" width="0.2032" layer="21"/>
<wire x1="-1.6" y1="-1.3" x2="1.6" y2="-1.3" width="0.2032" layer="21"/>
<text x="-0.8" y="0.5" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.9" y="-0.7" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="CTZ3">
<description>CTZ3 Series land pattern for variable capacitor - CTZ3E-50C-W1-PF</description>
<smd name="+" x="0" y="2.05" dx="1.5" dy="1.2" layer="1"/>
<smd name="-" x="0" y="-2.05" dx="1.5" dy="1.2" layer="1"/>
<text x="-2" y="3" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2" y="-3.4" size="0.4064" layer="27">&gt;VALUE</text>
<wire x1="-1.6" y1="1.4" x2="-1.6" y2="-2.25" width="0.127" layer="51"/>
<wire x1="-1.6" y1="-2.25" x2="1.6" y2="-2.25" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.4" x2="1.6" y2="-2.25" width="0.127" layer="51"/>
<wire x1="-1.6" y1="1.4" x2="-1" y2="2.2" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.4" x2="1" y2="2.2" width="0.127" layer="51"/>
<wire x1="-1" y1="2.2" x2="1" y2="2.2" width="0.127" layer="51"/>
<wire x1="0" y1="0.8" x2="0" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-0.8" y1="0" x2="0.8" y2="0" width="0.127" layer="51"/>
<wire x1="-1.05" y1="2.25" x2="-1.7" y2="1.45" width="0.127" layer="21"/>
<wire x1="-1.7" y1="1.45" x2="-1.7" y2="-2.35" width="0.127" layer="21"/>
<wire x1="-1.7" y1="-2.35" x2="-1.05" y2="-2.35" width="0.127" layer="21"/>
<wire x1="1.05" y1="2.25" x2="1.7" y2="1.4" width="0.127" layer="21"/>
<wire x1="1.7" y1="1.4" x2="1.7" y2="-2.35" width="0.127" layer="21"/>
<wire x1="1.7" y1="-2.35" x2="1.05" y2="-2.35" width="0.127" layer="21"/>
<text x="-2" y="3" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2" y="-3.4" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="CAP-PTH-SMALLEZ">
<description>This is the "EZ" version of the .1" spaced ceramic thru-hole cap.&lt;br&gt;
It has reduced top mask to make it harder to put the component on the wrong side of the board.</description>
<circle x="0" y="0" radius="0.898025" width="0" layer="30"/>
<circle x="2.54" y="0" radius="0.915809375" width="0" layer="30"/>
<circle x="0" y="0" radius="0.40160625" width="0" layer="29"/>
<circle x="2.54" y="0" radius="0.40160625" width="0" layer="29"/>
<pad name="1" x="0" y="0" drill="0.7" diameter="1.651" stop="no"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651" stop="no"/>
<text x="-1.27" y="1.905" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-2.54" size="0.6096" layer="27">&gt;Value</text>
<circle x="0" y="0" radius="0.898025" width="0" layer="30"/>
<circle x="2.54" y="0" radius="0.915809375" width="0" layer="30"/>
<circle x="0" y="0" radius="0.40160625" width="0" layer="29"/>
<circle x="2.54" y="0" radius="0.40160625" width="0" layer="29"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-1.27" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.2032" layer="21"/>
<text x="-1.27" y="1.905" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-2.54" size="0.6096" layer="27">&gt;Value</text>
</package>
<package name="CAP-PTH-SMALL-KIT">
<description>&lt;h3&gt;CAP-PTH-SMALL-KIT&lt;/h3&gt;
Commonly used for small ceramic capacitors. Like our 0.1uF (http://www.sparkfun.com/products/8375) or 22pF caps (http://www.sparkfun.com/products/8571).&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of this package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<pad name="1" x="-1.397" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="2" x="1.397" y="0" drill="1.016" diameter="2.032" stop="no"/>
<polygon width="0.127" layer="30">
<vertex x="-1.4021" y="-0.9475" curve="-90"/>
<vertex x="-2.357" y="-0.0178" curve="-90.011749"/>
<vertex x="-1.4046" y="0.9576" curve="-90"/>
<vertex x="-0.4546" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-1.4046" y="-0.4395" curve="-90.012891"/>
<vertex x="-1.8491" y="-0.0153" curve="-90"/>
<vertex x="-1.4046" y="0.452" curve="-90"/>
<vertex x="-0.9627" y="-0.0051" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="1.397" y="-0.9475" curve="-90"/>
<vertex x="0.4421" y="-0.0178" curve="-90.011749"/>
<vertex x="1.3945" y="0.9576" curve="-90"/>
<vertex x="2.3445" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="1.3945" y="-0.4395" curve="-90.012891"/>
<vertex x="0.95" y="-0.0153" curve="-90"/>
<vertex x="1.3945" y="0.452" curve="-90"/>
<vertex x="1.8364" y="-0.0051" curve="-90.012967"/>
</polygon>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-2.667" y1="1.27" x2="2.667" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.667" y1="1.27" x2="2.667" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.667" y1="-1.27" x2="-2.667" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.667" y1="-1.27" x2="-2.667" y2="1.27" width="0.254" layer="21"/>
<polygon width="0.127" layer="30">
<vertex x="-1.4021" y="-0.9475" curve="-90"/>
<vertex x="-2.357" y="-0.0178" curve="-90.011749"/>
<vertex x="-1.4046" y="0.9576" curve="-90"/>
<vertex x="-0.4546" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-1.4046" y="-0.4395" curve="-90.012891"/>
<vertex x="-1.8491" y="-0.0153" curve="-90"/>
<vertex x="-1.4046" y="0.452" curve="-90"/>
<vertex x="-0.9627" y="-0.0051" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="1.397" y="-0.9475" curve="-90"/>
<vertex x="0.4421" y="-0.0178" curve="-90.011749"/>
<vertex x="1.3945" y="0.9576" curve="-90"/>
<vertex x="2.3445" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="1.3945" y="-0.4395" curve="-90.012891"/>
<vertex x="0.95" y="-0.0153" curve="-90"/>
<vertex x="1.3945" y="0.452" curve="-90"/>
<vertex x="1.8364" y="-0.0051" curve="-90.012967"/>
</polygon>
</package>
<package name="CAP-PTH-SMALL">
<pad name="1" x="0" y="0" drill="0.7" diameter="1.651"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651"/>
<text x="0.508" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="0.254" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<text x="0.508" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="0.254" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="CAP-PTH-5MM">
<pad name="1" x="-2.5" y="0" drill="0.7" diameter="1.651"/>
<pad name="2" x="2.5" y="0" drill="0.7" diameter="1.651"/>
<text x="-0.762" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.016" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.2032" layer="21"/>
<text x="-0.762" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.016" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="CAP-PTH-SMALL2">
<pad name="1" x="0" y="0" drill="0.7" diameter="1.651"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651"/>
<text x="-1.27" y="1.905" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-2.54" size="0.6096" layer="27">&gt;Value</text>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-1.27" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.2032" layer="21"/>
<text x="-1.27" y="1.905" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-2.54" size="0.6096" layer="27">&gt;Value</text>
</package>
<package name="CAP-PTH-LARGE">
<pad name="1" x="-4.826" y="0" drill="0.9" diameter="1.905"/>
<pad name="2" x="4.572" y="0" drill="0.9" diameter="1.905"/>
<text x="-0.762" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.016" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.2032" layer="21"/>
<text x="-0.762" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.016" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="GRM43D">
<rectangle x1="-2.2" y1="-1.6" x2="-1.1" y2="1.6" layer="51"/>
<rectangle x1="1.1" y1="-1.6" x2="2.2" y2="1.6" layer="51"/>
<smd name="A" x="1.927" y="0" dx="3.2" dy="1.65" layer="1" rot="R90"/>
<smd name="C" x="-1.927" y="0" dx="3.2" dy="1.65" layer="1" rot="R90"/>
<text x="-2" y="2" size="0.4064" layer="25">&gt;NAME</text>
<text x="0" y="-2" size="0.4064" layer="27" rot="R180">&gt;VALUE</text>
<wire x1="2.25" y1="1.6" x2="1.1" y2="1.6" width="0.127" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.127" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-2.25" y2="1.6" width="0.127" layer="51"/>
<wire x1="-2.25" y1="1.6" x2="-2.25" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="-1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="2.25" y2="-1.6" width="0.127" layer="51"/>
<wire x1="2.25" y1="-1.6" x2="2.25" y2="1.6" width="0.127" layer="51"/>
<wire x1="1.1" y1="1.6" x2="1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-2.3" y1="1.8" x2="2.3" y2="1.8" width="0.127" layer="21"/>
<wire x1="-2.3" y1="-1.8" x2="2.3" y2="-1.8" width="0.127" layer="21"/>
<rectangle x1="-2.2" y1="-1.6" x2="-1.1" y2="1.6" layer="51"/>
<rectangle x1="1.1" y1="-1.6" x2="2.2" y2="1.6" layer="51"/>
<text x="-2" y="2" size="0.4064" layer="25">&gt;NAME</text>
<text x="0" y="-2" size="0.4064" layer="27" rot="R180">&gt;VALUE</text>
</package>
<package name="AXIAL-5MM">
<pad name="P$1" x="-2.5" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="2.5" y="0" drill="0.9" diameter="1.8796"/>
<text x="-2.54" y="1.17" size="0.4" layer="25">&gt;Name</text>
<text x="-1.032" y="-0.208" size="0.4" layer="21" ratio="15">&gt;Value</text>
<wire x1="-1.14" y1="0.762" x2="1.14" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.14" y1="0.762" x2="1.14" y2="0" width="0.2032" layer="21"/>
<wire x1="1.14" y1="0" x2="1.14" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="1.14" y1="-0.762" x2="-1.14" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-1.14" y1="-0.762" x2="-1.14" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.14" y1="0" x2="-1.14" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.14" y1="0" x2="1.394" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.14" y1="0" x2="-1.394" y2="0" width="0.2032" layer="21"/>
<text x="-2.54" y="1.17" size="0.4" layer="25">&gt;Name</text>
<text x="-1.032" y="-0.208" size="0.4" layer="21" ratio="15">&gt;Value</text>
</package>
<package name="PAD.02X.02">
<description>&lt;h3&gt;Electrically Conductive Pad 0.02" Square&lt;/h3&gt;
Used as a test point connection for pogo pins or other debugging tools. 
&lt;p&gt;Specifications:
&lt;li&gt;Area: 0.02" x 0.02"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;TEST_POINT&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<smd name="P$1" x="0" y="0" dx="0.508" dy="0.508" layer="1"/>
</package>
<package name="PAD.03X.03">
<description>&lt;h3&gt;Electrically Conductive Pad 0.03" Circle&lt;/h3&gt;
Used as a test point connection for pogo pins or other debugging tools. 
&lt;p&gt;Specifications:
&lt;li&gt;Area: 0.03" x 0.03"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;TEST_POINT&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<smd name="P$1" x="0" y="0" dx="0.762" dy="0.762" layer="1" roundness="100" cream="no"/>
</package>
<package name="PAD.03X.04">
<description>&lt;h3&gt;Electrically Conductive Pad 0.04" Circle&lt;/h3&gt;
Used as a test point connection for pogo pins or other debugging tools. 
&lt;p&gt;Specifications:
&lt;li&gt;Area: 0.04" x 0.04"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;TEST_POINT&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<smd name="P$1" x="0" y="0" dx="1.016" dy="1.016" layer="1" roundness="100" cream="no"/>
</package>
<package name="PAD.03X.05">
<description>&lt;h3&gt;Electrically Conductive Pad 0.05" Circle&lt;/h3&gt;
Used as a test point connection for pogo pins or other debugging tools. 
&lt;p&gt;Specifications:
&lt;li&gt;Area: 0.05" x 0.05"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;TEST_POINT&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<smd name="P$1" x="0" y="0" dx="1.27" dy="1.27" layer="1" roundness="100" cream="no"/>
</package>
<package name="TP_15TH">
<description>&lt;h3&gt;Electrically Conductive Via 0.015" Drill&lt;/h3&gt;
Used as a test point connection for pogo pins or other debugging tools. 
&lt;p&gt;Specifications:
&lt;li&gt;Area:0.015"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;TEST_POINT&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<circle x="0" y="0" radius="0.381" width="0" layer="30"/>
<pad name="P$1" x="0" y="0" drill="0.381" diameter="0.6096" stop="no"/>
<circle x="0" y="0" radius="0.381" width="0" layer="30"/>
</package>
<package name="DIL8">
<description>&lt;B&gt;Dual In Line&lt;/B&gt;&lt;p&gt;
package type P</description>
<wire x1="-5.08" y1="-0.635" x2="-5.08" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21" curve="180"/>
<wire x1="5.08" y1="-2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90" first="yes"/>
<pad name="2" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-5.2578" y="-2.54" size="1.778" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="7.239" y="-2.54" size="1.778" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="SO-14">
<description>&lt;B&gt;Small Outline Narrow Plastic Gull Wing&lt;/B&gt;&lt;p&gt;
150-mil body, package type SL</description>
<wire x1="-4.895" y1="3.9" x2="4.895" y2="3.9" width="0.1998" layer="39"/>
<wire x1="4.895" y1="-3.9" x2="-4.895" y2="-3.9" width="0.1998" layer="39"/>
<wire x1="-4.895" y1="-3.9" x2="-4.895" y2="3.9" width="0.1998" layer="39"/>
<wire x1="4.305" y1="-1.9" x2="-4.305" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="-4.305" y1="-1.9" x2="-4.305" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="-4.305" y1="-1.4" x2="-4.305" y2="1.9" width="0.2032" layer="51"/>
<wire x1="4.305" y1="-1.4" x2="-4.305" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="4.305" y1="1.9" x2="4.305" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="4.305" y1="-1.4" x2="4.305" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="4.895" y1="3.9" x2="4.895" y2="-3.9" width="0.1998" layer="39"/>
<wire x1="-4.305" y1="1.9" x2="4.305" y2="1.9" width="0.2032" layer="51"/>
<rectangle x1="-4.0551" y1="-3.1001" x2="-3.5649" y2="-2" layer="51"/>
<rectangle x1="-2.7851" y1="-3.1001" x2="-2.2949" y2="-2" layer="51"/>
<rectangle x1="-1.5151" y1="-3.1001" x2="-1.0249" y2="-2" layer="51"/>
<rectangle x1="-0.2451" y1="-3.1001" x2="0.2451" y2="-2" layer="51"/>
<rectangle x1="-0.2451" y1="2" x2="0.2451" y2="3.1001" layer="51"/>
<rectangle x1="-1.5151" y1="2" x2="-1.0249" y2="3.1001" layer="51"/>
<rectangle x1="-2.7851" y1="2" x2="-2.2949" y2="3.1001" layer="51"/>
<rectangle x1="-4.0551" y1="2" x2="-3.5649" y2="3.1001" layer="51"/>
<rectangle x1="1.0249" y1="-3.1001" x2="1.5151" y2="-2" layer="51"/>
<rectangle x1="2.2949" y1="-3.1001" x2="2.7851" y2="-2" layer="51"/>
<rectangle x1="3.5649" y1="-3.1001" x2="4.0551" y2="-2" layer="51"/>
<rectangle x1="3.5649" y1="2" x2="4.0551" y2="3.1001" layer="51"/>
<rectangle x1="2.2949" y1="2" x2="2.7851" y2="3.1001" layer="51"/>
<rectangle x1="1.0249" y1="2" x2="1.5151" y2="3.1001" layer="51"/>
<smd name="1" x="-3.81" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="2" x="-2.54" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="3" x="-1.27" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="4" x="0" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="5" x="1.27" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="6" x="2.54" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="7" x="3.81" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="8" x="3.81" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="9" x="2.54" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="10" x="1.27" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="11" x="0" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="12" x="-1.27" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="13" x="-2.54" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="14" x="-3.81" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<text x="-4.572" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.842" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-3.81" y="0.365" size="0.3048" layer="48">JEDEC MS-012 AB</text>
<text x="-3.81" y="-0.635" size="0.4064" layer="48">IPC SO14</text>
</package>
<package name="SO-08M">
<description>&lt;B&gt;Small Outline Medium Plastic Gull Wing&lt;/B&gt;&lt;p&gt;
207-mil body, package type SM</description>
<wire x1="2.4" y1="2.43" x2="2.4" y2="-1.93" width="0.2032" layer="21"/>
<wire x1="2.4" y1="-1.93" x2="2.4" y2="-2.43" width="0.2032" layer="21"/>
<wire x1="2.4" y1="-2.43" x2="-2.4" y2="-2.43" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-2.43" x2="-2.4" y2="-1.93" width="0.2032" layer="21"/>
<wire x1="-2.4" y1="-1.93" x2="-2.4" y2="2.43" width="0.2032" layer="21"/>
<wire x1="-2.4" y1="2.43" x2="2.4" y2="2.43" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.93" x2="-2.4" y2="-1.93" width="0.2032" layer="21"/>
<rectangle x1="-2.1501" y1="-4.05" x2="-1.6599" y2="-2.5301" layer="21"/>
<rectangle x1="-0.8801" y1="-4.05" x2="-0.3899" y2="-2.5301" layer="21"/>
<rectangle x1="0.3899" y1="-4.05" x2="0.8801" y2="-2.5301" layer="21"/>
<rectangle x1="1.6599" y1="-4.05" x2="2.1501" y2="-2.5301" layer="21"/>
<rectangle x1="1.6599" y1="2.5301" x2="2.1501" y2="4.05" layer="21"/>
<rectangle x1="0.3899" y1="2.5301" x2="0.8801" y2="4.05" layer="21"/>
<rectangle x1="-0.8801" y1="2.5301" x2="-0.3899" y2="4.05" layer="21"/>
<rectangle x1="-2.1501" y1="2.5301" x2="-1.6599" y2="4.05" layer="21"/>
<smd name="1" x="-1.905" y="-3.33" dx="0.6" dy="2.2" layer="1"/>
<smd name="2" x="-0.635" y="-3.33" dx="0.6" dy="2.2" layer="1"/>
<smd name="3" x="0.635" y="-3.33" dx="0.6" dy="2.2" layer="1"/>
<smd name="4" x="1.905" y="-3.33" dx="0.6" dy="2.2" layer="1"/>
<smd name="5" x="1.905" y="3.33" dx="0.6" dy="2.2" layer="1"/>
<smd name="6" x="0.635" y="3.33" dx="0.6" dy="2.2" layer="1"/>
<smd name="7" x="-0.635" y="3.33" dx="0.6" dy="2.2" layer="1"/>
<smd name="8" x="-1.905" y="3.33" dx="0.6" dy="2.2" layer="1"/>
<text x="-2.667" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.937" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-1.905" y="-1.27" size="0.3048" layer="48">SO8 Medium</text>
<text x="-1.905" y="-0.635" size="0.3048" layer="48">Microchip</text>
</package>
<package name="SO-08">
<description>&lt;B&gt;Small Outline Narrow Plastic Gull Wing&lt;/B&gt;&lt;p&gt;
150-mil body, package type SN</description>
<wire x1="-2.9" y1="3.9" x2="2.9" y2="3.9" width="0.1998" layer="39"/>
<wire x1="2.9" y1="3.9" x2="2.9" y2="-3.9" width="0.1998" layer="39"/>
<wire x1="2.9" y1="-3.9" x2="-2.9" y2="-3.9" width="0.1998" layer="39"/>
<wire x1="-2.9" y1="-3.9" x2="-2.9" y2="3.9" width="0.1998" layer="39"/>
<wire x1="2.4" y1="1.9" x2="2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.4" x2="2.4" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.9" x2="-2.4" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.9" x2="-2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.4" x2="-2.4" y2="1.9" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="1.9" x2="2.4" y2="1.9" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.4" x2="-2.4" y2="-1.4" width="0.2032" layer="51"/>
<rectangle x1="-2.1501" y1="-3.1001" x2="-1.6599" y2="-2" layer="51"/>
<rectangle x1="-0.8801" y1="-3.1001" x2="-0.3899" y2="-2" layer="51"/>
<rectangle x1="0.3899" y1="-3.1001" x2="0.8801" y2="-2" layer="51"/>
<rectangle x1="1.6599" y1="-3.1001" x2="2.1501" y2="-2" layer="51"/>
<rectangle x1="1.6599" y1="2" x2="2.1501" y2="3.1001" layer="51"/>
<rectangle x1="0.3899" y1="2" x2="0.8801" y2="3.1001" layer="51"/>
<rectangle x1="-0.8801" y1="2" x2="-0.3899" y2="3.1001" layer="51"/>
<rectangle x1="-2.1501" y1="2" x2="-1.6599" y2="3.1001" layer="51"/>
<rectangle x1="-1" y1="-1" x2="1" y2="1" layer="35"/>
<smd name="1" x="-1.905" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="2" x="-0.635" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="3" x="0.635" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="4" x="1.905" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="5" x="1.905" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="6" x="0.635" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="7" x="-0.635" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="8" x="-1.905" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<text x="-2.667" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.937" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-1.905" y="-0.635" size="0.4064" layer="48">IPC SO8</text>
<text x="-1.905" y="0.365" size="0.3048" layer="48">JEDEC MS-012 AA</text>
</package>
<package name="TSSOP8">
<description>&lt;b&gt;Thin Shrink Small Outline Package&lt;/b&gt;&lt;p&gt;
package type ST</description>
<circle x="-0.65" y="-1.625" radius="0.325" width="0" layer="21"/>
<wire x1="1.4" y1="-2.15" x2="1.4" y2="2.15" width="0.2032" layer="21"/>
<wire x1="1.4" y1="2.15" x2="-1.4" y2="2.15" width="0.2032" layer="21"/>
<wire x1="-1.4" y1="2.15" x2="-1.4" y2="-2.15" width="0.2032" layer="21"/>
<wire x1="-1.4" y1="-2.15" x2="1.4" y2="-2.15" width="0.2032" layer="21"/>
<rectangle x1="-1.1" y1="-3.2" x2="-0.85" y2="-2.2" layer="51"/>
<rectangle x1="-0.45" y1="-3.2" x2="-0.2" y2="-2.2" layer="51"/>
<rectangle x1="0.2" y1="-3.2" x2="0.45" y2="-2.2" layer="51"/>
<rectangle x1="0.85" y1="-3.2" x2="1.1" y2="-2.2" layer="51"/>
<rectangle x1="0.85" y1="2.2" x2="1.1" y2="3.2" layer="51"/>
<rectangle x1="0.2" y1="2.2" x2="0.45" y2="3.2" layer="51"/>
<rectangle x1="-0.45" y1="2.2" x2="-0.2" y2="3.2" layer="51"/>
<rectangle x1="-1.1" y1="2.2" x2="-0.85" y2="3.2" layer="51"/>
<smd name="1" x="-0.975" y="-2.925" dx="0.35" dy="1.2" layer="1"/>
<smd name="2" x="-0.325" y="-2.925" dx="0.35" dy="1.2" layer="1"/>
<smd name="3" x="0.325" y="-2.925" dx="0.35" dy="1.2" layer="1"/>
<smd name="4" x="0.975" y="-2.925" dx="0.35" dy="1.2" layer="1"/>
<smd name="5" x="0.975" y="2.925" dx="0.35" dy="1.2" layer="1"/>
<smd name="6" x="0.325" y="2.925" dx="0.35" dy="1.2" layer="1"/>
<smd name="7" x="-0.325" y="2.925" dx="0.35" dy="1.2" layer="1"/>
<smd name="8" x="-0.975" y="2.925" dx="0.35" dy="1.2" layer="1"/>
<text x="-1.625" y="-2.925" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.925" y="-3.25" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="RESISTOR">
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.1524" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="CAP">
<rectangle x1="-2.032" y1="0.508" x2="2.032" y2="1.016" layer="94"/>
<rectangle x1="-2.032" y1="1.524" x2="2.032" y2="2.032" layer="94"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<text x="1.524" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-2.159" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="0.508" x2="2.032" y2="1.016" layer="94"/>
<rectangle x1="-2.032" y1="1.524" x2="2.032" y2="2.032" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="0.508" width="0.1524" layer="94"/>
<text x="1.524" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-2.159" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="GND">
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="+3V3">
<pin name="+3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
</symbol>
<symbol name="TEST-POINT">
<wire x1="3.302" y1="0.762" x2="2.54" y2="0" width="0.1524" layer="94" curve="90"/>
<pin name="1" x="0" y="0" visible="off" length="point" rot="R180"/>
<text x="-2.54" y="2.54" size="1.778" layer="95" font="vector">&gt;Name</text>
<text x="-2.54" y="-2.54" size="1.778" layer="96" font="vector">&gt;Value</text>
<wire x1="2.54" y1="0" x2="3.302" y2="-0.762" width="0.1524" layer="94" curve="90"/>
<wire x1="2.54" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="3.302" y1="0.762" x2="3.302" y2="-0.762" width="0.1524" layer="94" curve="180"/>
<text x="-2.54" y="2.54" size="1.778" layer="95" font="vector">&gt;Name</text>
<text x="-2.54" y="-2.54" size="1.778" layer="96" font="vector">&gt;Value</text>
</symbol>
<symbol name="24AA">
<wire x1="-10.16" y1="10.16" x2="12.7" y2="10.16" width="0.254" layer="94"/>
<wire x1="12.7" y1="10.16" x2="12.7" y2="0" width="0.254" layer="94"/>
<wire x1="12.7" y1="0" x2="12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="-7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="-10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="-10.16" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-2.54" x2="-10.16" y2="0" width="0.254" layer="94"/>
<wire x1="-10.16" y1="0" x2="-10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="-10.16" y1="5.08" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="-2.54" y1="8.89" x2="4.826" y2="8.89" width="0.1524" layer="94"/>
<wire x1="4.826" y1="8.89" x2="4.826" y2="0" width="0.1524" layer="94"/>
<wire x1="4.826" y1="0" x2="4.826" y2="-6.604" width="0.1524" layer="94"/>
<wire x1="4.826" y1="-6.604" x2="-1.016" y2="-6.604" width="0.1524" layer="94"/>
<wire x1="-1.016" y1="-6.604" x2="-2.54" y2="-6.604" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-6.604" x2="-2.54" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="1.016" x2="-2.54" y2="3.556" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="3.556" x2="-2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="8.89" width="0.1524" layer="94"/>
<wire x1="-4.826" y1="0" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-4.826" y1="-2.54" x2="-2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-4.826" y1="-5.08" x2="-2.54" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="0" x2="-8.636" y2="0" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-2.54" x2="-8.636" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="-8.636" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="7.62" x2="-8.636" y2="7.62" width="0.1524" layer="94"/>
<wire x1="12.7" y1="0" x2="10.922" y2="0" width="0.1524" layer="94"/>
<wire x1="5.588" y1="0" x2="4.826" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.016" y1="8.636" x2="-1.016" y2="3.556" width="0.1524" layer="94"/>
<wire x1="-1.016" y1="1.016" x2="-1.016" y2="-6.604" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="5.08" x2="-8.636" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-4.572" y1="5.08" x2="-2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="3.556" x2="-1.016" y2="3.556" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="7.62" x2="-2.54" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="1.016" x2="-1.016" y2="1.016" width="0.1524" layer="94"/>
<pin name="A0" x="-12.7" y="-5.08" length="short" direction="in"/>
<pin name="A1" x="-12.7" y="-2.54" length="short" direction="in"/>
<pin name="A2" x="-12.7" y="0" length="short" direction="in"/>
<pin name="GND" x="7.62" y="-10.16" visible="pad" length="short" direction="pwr" rot="R90"/>
<pin name="SCL" x="-12.7" y="7.62" length="short" direction="in"/>
<pin name="SDA" x="15.24" y="0" length="short" rot="R180"/>
<pin name="VCC" x="7.62" y="12.7" visible="pad" length="short" direction="pwr" rot="R270"/>
<pin name="WP" x="-12.7" y="5.08" length="short" direction="in"/>
<text x="3.81" y="-4.826" size="1.778" layer="94" rot="R90">Array</text>
<text x="6.604" y="7.62" size="1.778" layer="95">VCC</text>
<text x="6.858" y="-6.858" size="1.778" layer="95">GND</text>
<text x="-10.16" y="11.43" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="1.524" y="-4.826" size="1.778" layer="94" rot="R90">EEPROM</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="RESISTOR" prefix="R" uservalue="yes">
<description>&lt;b&gt;Resistor&lt;/b&gt;
Basic schematic elements and footprints for 0603, 1206, and PTH resistors.</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="0402-RES" package="0402-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603-RES" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805-RES" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="AXIAL-0.3" package="AXIAL-0.3">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EZ" package="AXIAL-0.3EZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KIT" package="AXIAL-0.3-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/2W" package="AXIAL-0.5">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W" package="AXIAL-0.4">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/6W" package="1/6W-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1W" package="AXIAL-0.6">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-2W" package="AXIAL-0.8">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAP" prefix="C" uservalue="yes">
<description>&lt;b&gt;Capacitor&lt;/b&gt;
Standard 0603 ceramic capacitor, and 0.1" leaded capacitor.</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="0402-CAP" package="0402-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603-CAP" package="0603-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1210" package="1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ASMD" package="CTZ3">
<connects>
<connect gate="G$1" pin="1" pad="+"/>
<connect gate="G$1" pin="2" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EZ" package="CAP-PTH-SMALLEZ">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KIT" package="CAP-PTH-SMALL-KIT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH" package="CAP-PTH-SMALL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH1" package="CAP-PTH-5MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH2" package="CAP-PTH-SMALL2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH3" package="CAP-PTH-LARGE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="GRM43D">
<connects>
<connect gate="G$1" pin="1" pad="A"/>
<connect gate="G$1" pin="2" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_" package="AXIAL-5MM">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
<gate name="2" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+3V3" prefix="+3V3">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
<gate name="G$2" symbol="+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TEST-POINT" prefix="TP">
<description>&lt;h3&gt;SparkFun Test Points&lt;/h3&gt;
&lt;p&gt;Bare copper test points for troubleshooting or In-Circuit-Testing. These are used by our Production team for verifying production board runs using pogo-pins on test beds.&lt;/p&gt;
&lt;p&gt;&lt;b&gt;SparkFun Products:&lt;/b&gt;
&lt;ul&gt;&lt;li&gt;&lt;a href=https://www.sparkfun.com/products/13284&gt;SparkFun LSM9DS1 Breakout&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href=https://www.sparkfun.com/products/13714&gt;SparkFun PSOC&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/13879"&gt;SparkFun Load Cell Amplifier&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="TEST-POINT" x="0" y="0"/>
</gates>
<devices>
<device name="2" package="PAD.02X.02">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3" package="PAD.03X.03">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3X4" package="PAD.03X.04">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3X5" package="PAD.03X.05">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TP_15TH_THRU" package="TP_15TH">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="24*" prefix="IC">
<description>Serial &lt;B&gt;EEPROM&lt;/B&gt;&lt;p&gt;
I2C</description>
<gates>
<gate name="G$1" symbol="24AA" x="0" y="0"/>
</gates>
<devices>
<device name="P" package="DIL8">
<connects>
<connect gate="G$1" pin="A0" pad="1"/>
<connect gate="G$1" pin="A1" pad="2"/>
<connect gate="G$1" pin="A2" pad="3"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="SCL" pad="6"/>
<connect gate="G$1" pin="SDA" pad="5"/>
<connect gate="G$1" pin="VCC" pad="8"/>
<connect gate="G$1" pin="WP" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="" constant="no"/>
<attribute name="OC_NEWARK" value="" constant="no"/>
</technology>
<technology name="AA01">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="24AA01-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="1331266" constant="no"/>
<attribute name="OC_NEWARK" value="35M0692" constant="no"/>
</technology>
<technology name="AA02">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="24AA02-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="1331271" constant="no"/>
<attribute name="OC_NEWARK" value="95M2072" constant="no"/>
</technology>
<technology name="AA04">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="24AA04-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="1331275" constant="no"/>
<attribute name="OC_NEWARK" value="35M0696" constant="no"/>
</technology>
<technology name="AA08">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA08-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="1331281" constant="no"/>
<attribute name="OC_NEWARK" value="92C6825" constant="no"/>
</technology>
<technology name="AA128">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA128-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="92C6840" constant="no"/>
</technology>
<technology name="AA16">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="24AA16-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="1331287" constant="no"/>
<attribute name="OC_NEWARK" value="35M0705" constant="no"/>
</technology>
<technology name="AA256">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA256-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="1331294" constant="no"/>
<attribute name="OC_NEWARK" value="92C6872" constant="no"/>
</technology>
<technology name="AA32A">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA32A-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="1331297" constant="no"/>
<attribute name="OC_NEWARK" value="92C6885" constant="no"/>
</technology>
<technology name="AA64">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA64-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="1331303" constant="no"/>
<attribute name="OC_NEWARK" value="92C6909" constant="no"/>
</technology>
<technology name="C01A">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="M24C01-WBN6P" constant="no"/>
<attribute name="OC_FARNELL" value="9882782" constant="no"/>
<attribute name="OC_NEWARK" value="24M5067" constant="no"/>
</technology>
<technology name="C02A">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24C02C-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="1755843" constant="no"/>
<attribute name="OC_NEWARK" value="96K4062" constant="no"/>
</technology>
<technology name="C04A">
<attribute name="MF" value="RAMTRON INTERNATIONAL CORP" constant="no"/>
<attribute name="MPN" value="FM24C04A-P" constant="no"/>
<attribute name="OC_FARNELL" value="1094258" constant="no"/>
<attribute name="OC_NEWARK" value="97H6447" constant="no"/>
</technology>
<technology name="C08B">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="AT24C08B-PU" constant="no"/>
<attribute name="OC_FARNELL" value="1362644" constant="no"/>
<attribute name="OC_NEWARK" value="50M3317" constant="no"/>
</technology>
<technology name="C16B">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="AT24C16B-PU" constant="no"/>
<attribute name="OC_FARNELL" value="1362650" constant="no"/>
<attribute name="OC_NEWARK" value="50M3323" constant="no"/>
</technology>
<technology name="C32A">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="AT24C32C-PU" constant="no"/>
<attribute name="OC_FARNELL" value="1362652" constant="no"/>
<attribute name="OC_NEWARK" value="50M3325" constant="no"/>
</technology>
<technology name="C64">
<attribute name="MF" value="RAMTRON INTERNATIONAL CORP" constant="no"/>
<attribute name="MPN" value="FM24C64-P" constant="no"/>
<attribute name="OC_FARNELL" value="1362657" constant="no"/>
<attribute name="OC_NEWARK" value="97H6452" constant="no"/>
</technology>
<technology name="CL04B">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="LC01">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="24LC01BH-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="1200025" constant="no"/>
<attribute name="OC_NEWARK" value="77M3542" constant="no"/>
</technology>
<technology name="LC024">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="24LC024-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="1331317" constant="no"/>
<attribute name="OC_NEWARK" value="35M0731" constant="no"/>
</technology>
<technology name="LC025">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC025-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="92C7098" constant="no"/>
</technology>
<technology name="LC04">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC04B-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="1196811" constant="no"/>
<attribute name="OC_NEWARK" value="62K0576" constant="no"/>
</technology>
<technology name="LC08B">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC08B/P" constant="no"/>
<attribute name="OC_FARNELL" value="1084245" constant="no"/>
<attribute name="OC_NEWARK" value="96K4073" constant="no"/>
</technology>
<technology name="LC128">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC128-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="9757929" constant="no"/>
<attribute name="OC_NEWARK" value="12C2007" constant="no"/>
</technology>
<technology name="LC16B">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC16B/P" constant="no"/>
<attribute name="OC_FARNELL" value="1200026" constant="no"/>
<attribute name="OC_NEWARK" value="69K7671" constant="no"/>
</technology>
<technology name="LC256">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC256-E/P" constant="no"/>
<attribute name="OC_FARNELL" value="9757970" constant="no"/>
<attribute name="OC_NEWARK" value="92C7169" constant="no"/>
</technology>
<technology name="LC32A">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC32A/P" constant="no"/>
<attribute name="OC_FARNELL" value="1084246" constant="no"/>
<attribute name="OC_NEWARK" value="75K1884" constant="no"/>
</technology>
<technology name="LC64">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC64-I/P" constant="no"/>
<attribute name="OC_FARNELL" value="9758054" constant="no"/>
<attribute name="OC_NEWARK" value="62K0584" constant="no"/>
</technology>
<technology name="LCS52">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LCS52-I/PG" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="89H3098" constant="no"/>
</technology>
</technologies>
</device>
<device name="SL" package="SO-14">
<connects>
<connect gate="G$1" pin="A0" pad="2"/>
<connect gate="G$1" pin="A1" pad="3"/>
<connect gate="G$1" pin="A2" pad="5"/>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="SCL" pad="10"/>
<connect gate="G$1" pin="SDA" pad="9"/>
<connect gate="G$1" pin="VCC" pad="13"/>
<connect gate="G$1" pin="WP" pad="12"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="" constant="no"/>
<attribute name="OC_NEWARK" value="" constant="no"/>
</technology>
<technology name="AA04">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="AA08">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="AA16">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="C01A">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="C02A">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="C04A">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="C08B">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="C16B">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="CL04A">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="LC08B">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="LC16B">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="SM" package="SO-08M">
<connects>
<connect gate="G$1" pin="A0" pad="1"/>
<connect gate="G$1" pin="A1" pad="2"/>
<connect gate="G$1" pin="A2" pad="3"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="SCL" pad="6"/>
<connect gate="G$1" pin="SDA" pad="5"/>
<connect gate="G$1" pin="VCC" pad="8"/>
<connect gate="G$1" pin="WP" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="" constant="no"/>
<attribute name="OC_NEWARK" value="" constant="no"/>
</technology>
<technology name="AA01">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA01-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1331268" constant="no"/>
<attribute name="OC_NEWARK" value="92C6793" constant="no"/>
</technology>
<technology name="AA02">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA02-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1331272" constant="no"/>
<attribute name="OC_NEWARK" value="92C6803" constant="no"/>
</technology>
<technology name="AA04">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA04-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1331276" constant="no"/>
<attribute name="OC_NEWARK" value="92C6814" constant="no"/>
</technology>
<technology name="AA08">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA08-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1331282" constant="no"/>
<attribute name="OC_NEWARK" value="92C6826" constant="no"/>
</technology>
<technology name="AA128">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA128-I/MS" constant="no"/>
<attribute name="OC_FARNELL" value="1331285" constant="no"/>
<attribute name="OC_NEWARK" value="92C6839" constant="no"/>
</technology>
<technology name="AA16">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA16-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1331289" constant="no"/>
<attribute name="OC_NEWARK" value="96K4056" constant="no"/>
</technology>
<technology name="AA32A">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA32A-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1617659" constant="no"/>
<attribute name="OC_NEWARK" value="83C5815" constant="no"/>
</technology>
<technology name="C01A">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24C01C/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1362638" constant="no"/>
<attribute name="OC_NEWARK" value="96K4061" constant="no"/>
</technology>
<technology name="C02A">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24C02C/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1084339" constant="no"/>
<attribute name="OC_NEWARK" value="96K4065" constant="no"/>
</technology>
<technology name="C04A">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="M24C04-WMN6P" constant="no"/>
<attribute name="OC_FARNELL" value="9882812" constant="no"/>
<attribute name="OC_NEWARK" value="83K1376" constant="no"/>
</technology>
<technology name="C08B">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="AT24C08BN-SH-B" constant="no"/>
<attribute name="OC_FARNELL" value="1362645" constant="no"/>
<attribute name="OC_NEWARK" value="50M3318" constant="no"/>
</technology>
<technology name="C32A">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="IS24C32A-2GLI" constant="no"/>
<attribute name="OC_FARNELL" value="1718129" constant="no"/>
<attribute name="OC_NEWARK" value="43M4588" constant="no"/>
</technology>
<technology name="C64">
<attribute name="MF" value="RAMTRON INTERNATIONAL CORP" constant="no"/>
<attribute name="MPN" value="FM24C64-S" constant="no"/>
<attribute name="OC_FARNELL" value="9882685" constant="no"/>
<attribute name="OC_NEWARK" value="98H0189" constant="no"/>
</technology>
<technology name="CL04B">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="FM24CL04-S" constant="no"/>
<attribute name="OC_FARNELL" value="1607928" constant="no"/>
<attribute name="OC_NEWARK" value="97H6443" constant="no"/>
</technology>
<technology name="LC08B">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC08BT-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1818714" constant="no"/>
<attribute name="OC_NEWARK" value="92C7127" constant="no"/>
</technology>
<technology name="LC128">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC128-I/SM" constant="no"/>
<attribute name="OC_FARNELL" value="9757937" constant="no"/>
<attribute name="OC_NEWARK" value="92C7134" constant="no"/>
</technology>
<technology name="LC16B">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC16B/SN" constant="no"/>
<attribute name="OC_FARNELL" value="9757945" constant="no"/>
<attribute name="OC_NEWARK" value="12C2012" constant="no"/>
</technology>
<technology name="LC32A">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC32A/SM" constant="no"/>
<attribute name="OC_FARNELL" value="1212670" constant="no"/>
<attribute name="OC_NEWARK" value="96K4080" constant="no"/>
</technology>
<technology name="LC64">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC64T-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="9758070" constant="no"/>
<attribute name="OC_NEWARK" value="12C2021" constant="no"/>
</technology>
</technologies>
</device>
<device name="SN" package="SO-08">
<connects>
<connect gate="G$1" pin="A0" pad="1"/>
<connect gate="G$1" pin="A1" pad="2"/>
<connect gate="G$1" pin="A2" pad="3"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="SCL" pad="6"/>
<connect gate="G$1" pin="SDA" pad="5"/>
<connect gate="G$1" pin="VCC" pad="8"/>
<connect gate="G$1" pin="WP" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="" constant="no"/>
<attribute name="OC_NEWARK" value="" constant="no"/>
</technology>
<technology name="AA01">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA01/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1331268" constant="no"/>
<attribute name="OC_NEWARK" value="89C9792" constant="no"/>
</technology>
<technology name="AA02">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="24AA02/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1331272" constant="no"/>
<attribute name="OC_NEWARK" value="89C9793" constant="no"/>
</technology>
<technology name="AA04">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA04/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1331276" constant="no"/>
<attribute name="OC_NEWARK" value="92C6818" constant="no"/>
</technology>
<technology name="AA08">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA08-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1579568" constant="no"/>
<attribute name="OC_NEWARK" value="92C6826" constant="no"/>
</technology>
<technology name="AA128">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA128-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="92C6842" constant="no"/>
</technology>
<technology name="AA16">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA16-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1331289" constant="no"/>
<attribute name="OC_NEWARK" value="96K4056" constant="no"/>
</technology>
<technology name="AA256">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="24AA256T-I/SM" constant="no"/>
<attribute name="OC_FARNELL" value="1579570" constant="no"/>
<attribute name="OC_NEWARK" value="08N6838" constant="no"/>
</technology>
<technology name="AA32A">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA32A-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1617659" constant="no"/>
<attribute name="OC_NEWARK" value="83C5815" constant="no"/>
</technology>
<technology name="AA64">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA64-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1331304" constant="no"/>
<attribute name="OC_NEWARK" value="85C2288" constant="no"/>
</technology>
<technology name="C08B">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="AT24C08BN-SH-B" constant="no"/>
<attribute name="OC_FARNELL" value="1362645" constant="no"/>
<attribute name="OC_NEWARK" value="50M3318" constant="no"/>
</technology>
<technology name="C16B">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="AT24C16BN-SH-B" constant="no"/>
<attribute name="OC_FARNELL" value="1362651" constant="no"/>
<attribute name="OC_NEWARK" value="50M3324" constant="no"/>
</technology>
<technology name="C32A">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="IS24C32A-2GLI" constant="no"/>
<attribute name="OC_FARNELL" value="1224413" constant="no"/>
<attribute name="OC_NEWARK" value="43M4588" constant="no"/>
</technology>
<technology name="CL04B">
<attribute name="MF" value="RAMTRON INTERNATIONAL CORP" constant="no"/>
<attribute name="MPN" value="FM24CL04-G" constant="no"/>
<attribute name="OC_FARNELL" value="1607928" constant="no"/>
<attribute name="OC_NEWARK" value="10J0444" constant="no"/>
</technology>
<technology name="LC024">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC024/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1659744" constant="no"/>
<attribute name="OC_NEWARK" value="92C7092" constant="no"/>
</technology>
<technology name="LC025">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC025/SN" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="92C7103" constant="no"/>
</technology>
<technology name="LC08B">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="24LC08B/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1212669" constant="no"/>
<attribute name="OC_NEWARK" value="12C2005" constant="no"/>
</technology>
<technology name="LC128">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC128-I/SNG" constant="no"/>
<attribute name="OC_FARNELL" value="9757937" constant="no"/>
<attribute name="OC_NEWARK" value="30H1511" constant="no"/>
</technology>
<technology name="LC16B">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC16B/SN" constant="no"/>
<attribute name="OC_FARNELL" value="9757945" constant="no"/>
<attribute name="OC_NEWARK" value="12C2012" constant="no"/>
</technology>
<technology name="LC256">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC256-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="9757996" constant="no"/>
<attribute name="OC_NEWARK" value="27C9144" constant="no"/>
</technology>
<technology name="LC32A">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC32A/SN" constant="no"/>
<attribute name="OC_FARNELL" value="9758003" constant="no"/>
<attribute name="OC_NEWARK" value="33C2976" constant="no"/>
</technology>
<technology name="LC64">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC64-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="9758070" constant="no"/>
<attribute name="OC_NEWARK" value="12C2020" constant="no"/>
</technology>
<technology name="LCS52">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LCS52-I/SN" constant="no"/>
<attribute name="OC_FARNELL" value="1816066" constant="no"/>
<attribute name="OC_NEWARK" value="92C7032" constant="no"/>
</technology>
</technologies>
</device>
<device name="ST" package="TSSOP8">
<connects>
<connect gate="G$1" pin="A0" pad="1"/>
<connect gate="G$1" pin="A1" pad="2"/>
<connect gate="G$1" pin="A2" pad="3"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="SCL" pad="6"/>
<connect gate="G$1" pin="SDA" pad="5"/>
<connect gate="G$1" pin="VCC" pad="8"/>
<connect gate="G$1" pin="WP" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="" constant="no"/>
<attribute name="OC_NEWARK" value="" constant="no"/>
</technology>
<technology name="AA128">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24AA128-I/ST" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="92C6843" constant="no"/>
</technology>
<technology name="AA64">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="25AA640A-I/ST" constant="no"/>
<attribute name="OC_FARNELL" value="1818513" constant="no"/>
<attribute name="OC_NEWARK" value="27M1300" constant="no"/>
</technology>
<technology name="C64">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="CAT24C64YI-GT3" constant="no"/>
<attribute name="OC_FARNELL" value="1718133" constant="no"/>
<attribute name="OC_NEWARK" value="08R5418" constant="no"/>
</technology>
<technology name="LC024">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="24LC024H-I/ST" constant="no"/>
<attribute name="OC_FARNELL" value="1659745" constant="no"/>
<attribute name="OC_NEWARK" value="77M3584" constant="no"/>
</technology>
<technology name="LC025">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC025-I/ST" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="92C7100" constant="no"/>
</technology>
<technology name="LC128">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC128-I/ST" constant="no"/>
<attribute name="OC_FARNELL" value="1296573" constant="no"/>
<attribute name="OC_NEWARK" value="62K0578" constant="no"/>
</technology>
<technology name="LC64">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LC64X-I/ST" constant="no"/>
<attribute name="OC_FARNELL" value="1296582" constant="no"/>
<attribute name="OC_NEWARK" value="96K4081" constant="no"/>
</technology>
<technology name="LCS52">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="24LCS52T/ST" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="92C7040" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="N1" library="russian-nixies" deviceset="IN-14" device=""/>
<part name="U$2" library="nixx" deviceset="STM32F042K6" device=""/>
<part name="JP2" library="pinhead" deviceset="PINHD-1X7" device=""/>
<part name="Q1" library="nixx" deviceset="BF820" device=""/>
<part name="P+2" library="nixx" deviceset="+180V" device=""/>
<part name="P+1" library="nixx" deviceset="+180V" device=""/>
<part name="R1" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="C1" library="joyAnalog" deviceset="CAP" device="0805"/>
<part name="GND1" library="joyAnalog" deviceset="GND" device=""/>
<part name="Q2" library="nixx" deviceset="BF820" device=""/>
<part name="R2" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="GND2" library="joyAnalog" deviceset="GND" device=""/>
<part name="Q3" library="nixx" deviceset="BF820" device=""/>
<part name="R3" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="GND3" library="joyAnalog" deviceset="GND" device=""/>
<part name="Q4" library="nixx" deviceset="BF820" device=""/>
<part name="R4" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="GND4" library="joyAnalog" deviceset="GND" device=""/>
<part name="Q5" library="nixx" deviceset="BF820" device=""/>
<part name="R5" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="GND5" library="joyAnalog" deviceset="GND" device=""/>
<part name="Q6" library="nixx" deviceset="BF820" device=""/>
<part name="R6" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="GND6" library="joyAnalog" deviceset="GND" device=""/>
<part name="Q7" library="nixx" deviceset="BF820" device=""/>
<part name="R7" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="GND7" library="joyAnalog" deviceset="GND" device=""/>
<part name="Q8" library="nixx" deviceset="BF820" device=""/>
<part name="R8" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="GND8" library="joyAnalog" deviceset="GND" device=""/>
<part name="Q9" library="nixx" deviceset="BF820" device=""/>
<part name="R9" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="GND9" library="joyAnalog" deviceset="GND" device=""/>
<part name="Q10" library="nixx" deviceset="BF820" device=""/>
<part name="R10" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="GND10" library="joyAnalog" deviceset="GND" device=""/>
<part name="Q11" library="nixx" deviceset="BF820" device=""/>
<part name="R11" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="GND11" library="joyAnalog" deviceset="GND" device=""/>
<part name="Q12" library="nixx" deviceset="BF820" device=""/>
<part name="R12" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="GND12" library="joyAnalog" deviceset="GND" device=""/>
<part name="GND13" library="joyAnalog" deviceset="GND" device=""/>
<part name="+3V1" library="joyAnalog" deviceset="+3V3" device=""/>
<part name="C2" library="joyAnalog" deviceset="CAP" device="0805"/>
<part name="C3" library="joyAnalog" deviceset="CAP" device="0805"/>
<part name="GND14" library="joyAnalog" deviceset="GND" device=""/>
<part name="+3V2" library="joyAnalog" deviceset="+3V3" device=""/>
<part name="JP1" library="nixx" deviceset="PINHD-1X7" device=""/>
<part name="GND15" library="joyAnalog" deviceset="GND" device=""/>
<part name="+3V3" library="joyAnalog" deviceset="+3V3" device=""/>
<part name="D1" library="nixx" deviceset="RGB_LED_CA" device="-150141M173100-R&amp;G&amp;B"/>
<part name="R13" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="+3V4" library="joyAnalog" deviceset="+3V3" device=""/>
<part name="R14" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="R15" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="R16" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="TP3" library="joyAnalog" deviceset="TEST-POINT" device="3X4" value="TEST-POINT3X4"/>
<part name="R17" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="R18" library="joyAnalog" deviceset="RESISTOR" device="0805-RES"/>
<part name="+3V5" library="joyAnalog" deviceset="+3V3" device=""/>
<part name="+3V6" library="joyAnalog" deviceset="+3V3" device=""/>
<part name="C4" library="joyAnalog" deviceset="CAP" device="0805"/>
<part name="IC1" library="joyAnalog" deviceset="24*" device="ST" technology="C64"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="N1" gate="G$1" x="220.98" y="-30.48"/>
<instance part="U$2" gate="G$1" x="302.26" y="99.06"/>
<instance part="JP2" gate="A" x="393.7" y="5.08"/>
<instance part="Q1" gate="A" x="101.6" y="48.26"/>
<instance part="P+2" gate="1" x="236.22" y="-27.94" rot="MR0"/>
<instance part="P+1" gate="1" x="363.22" y="-27.94"/>
<instance part="R1" gate="G$1" x="93.98" y="48.26"/>
<instance part="C1" gate="G$1" x="68.58" y="81.28"/>
<instance part="GND1" gate="1" x="104.14" y="40.64"/>
<instance part="Q2" gate="A" x="101.6" y="22.86"/>
<instance part="R2" gate="G$1" x="93.98" y="22.86"/>
<instance part="GND2" gate="1" x="104.14" y="15.24"/>
<instance part="Q3" gate="A" x="101.6" y="-2.54"/>
<instance part="R3" gate="G$1" x="93.98" y="-2.54"/>
<instance part="GND3" gate="1" x="104.14" y="-10.16"/>
<instance part="Q4" gate="A" x="101.6" y="-27.94"/>
<instance part="R4" gate="G$1" x="93.98" y="-27.94"/>
<instance part="GND4" gate="1" x="104.14" y="-35.56"/>
<instance part="Q5" gate="A" x="101.6" y="-55.88"/>
<instance part="R5" gate="G$1" x="93.98" y="-55.88"/>
<instance part="GND5" gate="1" x="104.14" y="-63.5"/>
<instance part="Q6" gate="A" x="167.64" y="48.26"/>
<instance part="R6" gate="G$1" x="160.02" y="48.26"/>
<instance part="GND6" gate="1" x="170.18" y="40.64"/>
<instance part="Q7" gate="A" x="167.64" y="22.86"/>
<instance part="R7" gate="G$1" x="160.02" y="22.86"/>
<instance part="GND7" gate="1" x="170.18" y="15.24"/>
<instance part="Q8" gate="A" x="167.64" y="-2.54"/>
<instance part="R8" gate="G$1" x="160.02" y="-2.54"/>
<instance part="GND8" gate="1" x="170.18" y="-10.16"/>
<instance part="Q9" gate="A" x="167.64" y="-27.94"/>
<instance part="R9" gate="G$1" x="160.02" y="-27.94"/>
<instance part="GND9" gate="1" x="170.18" y="-35.56"/>
<instance part="Q10" gate="A" x="167.64" y="-55.88"/>
<instance part="R10" gate="G$1" x="160.02" y="-55.88"/>
<instance part="GND10" gate="1" x="170.18" y="-63.5"/>
<instance part="Q11" gate="A" x="226.06" y="48.26"/>
<instance part="R11" gate="G$1" x="218.44" y="48.26"/>
<instance part="GND11" gate="1" x="228.6" y="40.64"/>
<instance part="Q12" gate="A" x="226.06" y="22.86"/>
<instance part="R12" gate="G$1" x="218.44" y="22.86"/>
<instance part="GND12" gate="1" x="228.6" y="15.24"/>
<instance part="GND13" gate="1" x="292.1" y="30.48"/>
<instance part="+3V1" gate="G$1" x="292.1" y="99.06"/>
<instance part="C2" gate="G$1" x="83.82" y="81.28"/>
<instance part="C3" gate="G$1" x="99.06" y="81.28"/>
<instance part="GND14" gate="1" x="83.82" y="76.2"/>
<instance part="+3V2" gate="G$1" x="83.82" y="88.9"/>
<instance part="JP1" gate="A" x="393.7" y="-38.1"/>
<instance part="GND15" gate="1" x="401.32" y="-45.72"/>
<instance part="+3V3" gate="G$1" x="401.32" y="-33.02" rot="MR0"/>
<instance part="D1" gate="G$1" x="477.52" y="0"/>
<instance part="R13" gate="G$1" x="378.46" y="-30.48"/>
<instance part="+3V4" gate="G$1" x="459.74" y="2.54"/>
<instance part="R14" gate="G$1" x="495.3" y="0"/>
<instance part="R15" gate="G$1" x="495.3" y="7.62"/>
<instance part="R16" gate="G$1" x="495.3" y="-7.62"/>
<instance part="TP3" gate="G$1" x="383.54" y="45.72"/>
<instance part="R17" gate="G$1" x="401.32" y="17.78" rot="R90"/>
<instance part="R18" gate="G$1" x="408.94" y="7.62" rot="R90"/>
<instance part="+3V5" gate="G$1" x="401.32" y="25.4" rot="MR0"/>
<instance part="+3V6" gate="G$1" x="408.94" y="15.24" rot="MR0"/>
<instance part="C4" gate="G$1" x="109.22" y="81.28"/>
<instance part="IC1" gate="G$1" x="276.86" y="48.26"/>
</instances>
<busses>
</busses>
<nets>
<net name="+180V" class="0">
<segment>
<pinref part="N1" gate="G$1" pin="A"/>
<pinref part="P+2" gate="1" pin="+180V"/>
<wire x1="231.14" y1="-33.02" x2="236.22" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-33.02" x2="236.22" y2="-30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R13" gate="G$1" pin="1"/>
<pinref part="P+1" gate="1" pin="+180V"/>
<wire x1="373.38" y1="-30.48" x2="363.22" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="Q1" gate="A" pin="E"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q2" gate="A" pin="E"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q3" gate="A" pin="E"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q4" gate="A" pin="E"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q5" gate="A" pin="E"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q6" gate="A" pin="E"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q7" gate="A" pin="E"/>
<pinref part="GND7" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q8" gate="A" pin="E"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q9" gate="A" pin="E"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q10" gate="A" pin="E"/>
<pinref part="GND10" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q11" gate="A" pin="E"/>
<pinref part="GND11" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q12" gate="A" pin="E"/>
<pinref part="GND12" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND13" gate="1" pin="GND"/>
<pinref part="U$2" gate="G$1" pin="VSS"/>
<wire x1="292.1" y1="33.02" x2="299.72" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="68.58" y1="78.74" x2="83.82" y2="78.74" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="83.82" y1="78.74" x2="99.06" y2="78.74" width="0.1524" layer="91"/>
<junction x="83.82" y="78.74"/>
<pinref part="GND14" gate="1" pin="GND"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="99.06" y1="78.74" x2="109.22" y2="78.74" width="0.1524" layer="91"/>
<junction x="99.06" y="78.74"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="6"/>
<pinref part="GND15" gate="1" pin="GND"/>
<wire x1="391.16" y1="-43.18" x2="401.32" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="7"/>
<wire x1="391.16" y1="-43.18" x2="391.16" y2="-45.72" width="0.1524" layer="91"/>
<junction x="391.16" y="-43.18"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="Q1" gate="A" pin="B"/>
<pinref part="R1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="Q2" gate="A" pin="B"/>
<pinref part="R2" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="Q3" gate="A" pin="B"/>
<pinref part="R3" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="Q4" gate="A" pin="B"/>
<pinref part="R4" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="Q5" gate="A" pin="B"/>
<pinref part="R5" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="Q6" gate="A" pin="B"/>
<pinref part="R6" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="Q7" gate="A" pin="B"/>
<pinref part="R7" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="Q8" gate="A" pin="B"/>
<pinref part="R8" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="Q9" gate="A" pin="B"/>
<pinref part="R9" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="Q10" gate="A" pin="B"/>
<pinref part="R10" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="Q11" gate="A" pin="B"/>
<pinref part="R11" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="Q12" gate="A" pin="B"/>
<pinref part="R12" gate="G$1" pin="2"/>
</segment>
</net>
<net name="NIXIE_1" class="0">
<segment>
<pinref part="N1" gate="G$1" pin="1"/>
<wire x1="195.58" y1="-20.32" x2="213.36" y2="-20.32" width="0.1524" layer="91"/>
<label x="195.58" y="-20.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="Q1" gate="A" pin="C"/>
<wire x1="104.14" y1="53.34" x2="104.14" y2="55.88" width="0.1524" layer="91"/>
<wire x1="104.14" y1="55.88" x2="116.84" y2="55.88" width="0.1524" layer="91"/>
<label x="106.68" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="NIXIE_2" class="0">
<segment>
<pinref part="N1" gate="G$1" pin="2"/>
<wire x1="195.58" y1="-22.86" x2="213.36" y2="-22.86" width="0.1524" layer="91"/>
<label x="195.58" y="-22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="Q2" gate="A" pin="C"/>
<wire x1="104.14" y1="27.94" x2="104.14" y2="30.48" width="0.1524" layer="91"/>
<wire x1="104.14" y1="30.48" x2="116.84" y2="30.48" width="0.1524" layer="91"/>
<label x="106.68" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="NIXIE_3" class="0">
<segment>
<pinref part="N1" gate="G$1" pin="3"/>
<wire x1="195.58" y1="-25.4" x2="213.36" y2="-25.4" width="0.1524" layer="91"/>
<label x="195.58" y="-25.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="Q3" gate="A" pin="C"/>
<wire x1="104.14" y1="2.54" x2="104.14" y2="5.08" width="0.1524" layer="91"/>
<wire x1="104.14" y1="5.08" x2="116.84" y2="5.08" width="0.1524" layer="91"/>
<label x="106.68" y="5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="NIXIE_4" class="0">
<segment>
<pinref part="N1" gate="G$1" pin="4"/>
<wire x1="195.58" y1="-27.94" x2="213.36" y2="-27.94" width="0.1524" layer="91"/>
<label x="195.58" y="-27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="Q4" gate="A" pin="C"/>
<wire x1="104.14" y1="-22.86" x2="104.14" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-20.32" x2="116.84" y2="-20.32" width="0.1524" layer="91"/>
<label x="106.68" y="-20.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="NIXIE_5" class="0">
<segment>
<pinref part="N1" gate="G$1" pin="5"/>
<wire x1="213.36" y1="-30.48" x2="195.58" y2="-30.48" width="0.1524" layer="91"/>
<label x="195.58" y="-30.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="Q5" gate="A" pin="C"/>
<wire x1="104.14" y1="-50.8" x2="104.14" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-48.26" x2="116.84" y2="-48.26" width="0.1524" layer="91"/>
<label x="106.68" y="-48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="NIXIE_6" class="0">
<segment>
<pinref part="N1" gate="G$1" pin="6"/>
<wire x1="195.58" y1="-33.02" x2="213.36" y2="-33.02" width="0.1524" layer="91"/>
<label x="195.58" y="-33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="Q6" gate="A" pin="C"/>
<wire x1="170.18" y1="53.34" x2="170.18" y2="55.88" width="0.1524" layer="91"/>
<wire x1="170.18" y1="55.88" x2="182.88" y2="55.88" width="0.1524" layer="91"/>
<label x="172.72" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="NIXIE_7" class="0">
<segment>
<pinref part="N1" gate="G$1" pin="7"/>
<wire x1="195.58" y1="-35.56" x2="213.36" y2="-35.56" width="0.1524" layer="91"/>
<label x="195.58" y="-35.56" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="Q7" gate="A" pin="C"/>
<wire x1="170.18" y1="27.94" x2="170.18" y2="30.48" width="0.1524" layer="91"/>
<wire x1="170.18" y1="30.48" x2="182.88" y2="30.48" width="0.1524" layer="91"/>
<label x="172.72" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="NIXIE_8" class="0">
<segment>
<pinref part="N1" gate="G$1" pin="8"/>
<wire x1="195.58" y1="-38.1" x2="213.36" y2="-38.1" width="0.1524" layer="91"/>
<label x="195.58" y="-38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="Q8" gate="A" pin="C"/>
<wire x1="170.18" y1="2.54" x2="170.18" y2="5.08" width="0.1524" layer="91"/>
<wire x1="170.18" y1="5.08" x2="182.88" y2="5.08" width="0.1524" layer="91"/>
<label x="172.72" y="5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="NIXIE_9" class="0">
<segment>
<pinref part="N1" gate="G$1" pin="9"/>
<wire x1="195.58" y1="-40.64" x2="213.36" y2="-40.64" width="0.1524" layer="91"/>
<label x="195.58" y="-40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="Q9" gate="A" pin="C"/>
<wire x1="170.18" y1="-22.86" x2="170.18" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-20.32" x2="182.88" y2="-20.32" width="0.1524" layer="91"/>
<label x="172.72" y="-20.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="NIXIE_10" class="0">
<segment>
<pinref part="N1" gate="G$1" pin="0"/>
<wire x1="195.58" y1="-43.18" x2="213.36" y2="-43.18" width="0.1524" layer="91"/>
<label x="195.58" y="-43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="Q10" gate="A" pin="C"/>
<wire x1="170.18" y1="-50.8" x2="170.18" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-48.26" x2="182.88" y2="-48.26" width="0.1524" layer="91"/>
<label x="172.72" y="-48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="NIXIE_DOT_LEFT" class="0">
<segment>
<pinref part="N1" gate="G$1" pin="LHDP"/>
<wire x1="251.46" y1="-20.32" x2="231.14" y2="-20.32" width="0.1524" layer="91"/>
<label x="233.68" y="-20.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="Q11" gate="A" pin="C"/>
<wire x1="228.6" y1="53.34" x2="228.6" y2="55.88" width="0.1524" layer="91"/>
<wire x1="228.6" y1="55.88" x2="241.3" y2="55.88" width="0.1524" layer="91"/>
<label x="231.14" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="NIXIE_DOT_RIGHT" class="0">
<segment>
<pinref part="N1" gate="G$1" pin="RHDP"/>
<wire x1="251.46" y1="-43.18" x2="231.14" y2="-43.18" width="0.1524" layer="91"/>
<label x="233.68" y="-43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="Q12" gate="A" pin="C"/>
<wire x1="228.6" y1="27.94" x2="228.6" y2="30.48" width="0.1524" layer="91"/>
<wire x1="228.6" y1="30.48" x2="241.3" y2="30.48" width="0.1524" layer="91"/>
<label x="231.14" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="+3V3" class="0">
<segment>
<pinref part="+3V1" gate="G$1" pin="+3V3"/>
<pinref part="U$2" gate="G$1" pin="VDD"/>
<wire x1="292.1" y1="96.52" x2="299.72" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="VDDA"/>
<wire x1="299.72" y1="93.98" x2="292.1" y2="93.98" width="0.1524" layer="91"/>
<wire x1="292.1" y1="93.98" x2="292.1" y2="96.52" width="0.1524" layer="91"/>
<junction x="292.1" y="96.52"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="1"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="99.06" y1="86.36" x2="83.82" y2="86.36" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="83.82" y1="86.36" x2="68.58" y2="86.36" width="0.1524" layer="91"/>
<junction x="83.82" y="86.36"/>
<pinref part="+3V2" gate="G$1" pin="+3V3"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="99.06" y1="86.36" x2="109.22" y2="86.36" width="0.1524" layer="91"/>
<junction x="99.06" y="86.36"/>
</segment>
<segment>
<pinref part="+3V4" gate="G$1" pin="+3V3"/>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="459.74" y1="0" x2="467.36" y2="0" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R17" gate="G$1" pin="2"/>
<pinref part="+3V5" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="R18" gate="G$1" pin="2"/>
<pinref part="+3V6" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="3"/>
<pinref part="+3V3" gate="G$1" pin="+3V3"/>
<wire x1="391.16" y1="-35.56" x2="401.32" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SPI_SCK" class="0">
<segment>
<pinref part="JP2" gate="A" pin="2"/>
<wire x1="368.3" y1="10.16" x2="391.16" y2="10.16" width="0.1524" layer="91"/>
<label x="368.3" y="10.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA5"/>
<wire x1="355.6" y1="83.82" x2="340.36" y2="83.82" width="0.1524" layer="91"/>
<label x="342.9" y="83.82" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI_MISO" class="0">
<segment>
<pinref part="JP2" gate="A" pin="3"/>
<wire x1="368.3" y1="7.62" x2="391.16" y2="7.62" width="0.1524" layer="91"/>
<label x="368.3" y="7.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA6"/>
<wire x1="355.6" y1="81.28" x2="340.36" y2="81.28" width="0.1524" layer="91"/>
<label x="342.9" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI_MOSI" class="0">
<segment>
<wire x1="368.3" y1="5.08" x2="391.16" y2="5.08" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="4"/>
<label x="368.3" y="5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA7"/>
<wire x1="355.6" y1="78.74" x2="340.36" y2="78.74" width="0.1524" layer="91"/>
<label x="342.9" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI_CS" class="0">
<segment>
<pinref part="JP2" gate="A" pin="5"/>
<wire x1="368.3" y1="2.54" x2="391.16" y2="2.54" width="0.1524" layer="91"/>
<label x="368.3" y="2.54" size="1.778" layer="95"/>
<pinref part="R18" gate="G$1" pin="1"/>
<wire x1="391.16" y1="2.54" x2="408.94" y2="2.54" width="0.1524" layer="91"/>
<junction x="391.16" y="2.54"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA12"/>
<wire x1="355.6" y1="63.5" x2="340.36" y2="63.5" width="0.1524" layer="91"/>
<label x="342.9" y="63.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="SWD_DIO" class="0">
<segment>
<wire x1="368.3" y1="0" x2="391.16" y2="0" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="6"/>
<label x="368.3" y="0" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA13/SWDIO"/>
<wire x1="355.6" y1="60.96" x2="340.36" y2="60.96" width="0.1524" layer="91"/>
<label x="342.9" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="SWD_CLK" class="0">
<segment>
<pinref part="JP2" gate="A" pin="7"/>
<wire x1="368.3" y1="-2.54" x2="391.16" y2="-2.54" width="0.1524" layer="91"/>
<label x="368.3" y="-2.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA14/SWCLK"/>
<wire x1="355.6" y1="58.42" x2="340.36" y2="58.42" width="0.1524" layer="91"/>
<label x="342.9" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="NRST" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="NRST"/>
<wire x1="287.02" y1="73.66" x2="299.72" y2="73.66" width="0.1524" layer="91"/>
<label x="287.02" y="73.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="1"/>
<wire x1="368.3" y1="12.7" x2="391.16" y2="12.7" width="0.1524" layer="91"/>
<label x="368.3" y="12.7" size="1.778" layer="95"/>
<pinref part="R17" gate="G$1" pin="1"/>
<wire x1="401.32" y1="12.7" x2="391.16" y2="12.7" width="0.1524" layer="91"/>
<junction x="391.16" y="12.7"/>
</segment>
</net>
<net name="UART_RX" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="PB7"/>
<wire x1="355.6" y1="35.56" x2="340.36" y2="35.56" width="0.1524" layer="91"/>
<label x="342.9" y="35.56" size="1.778" layer="95"/>
</segment>
<segment>
<label x="373.38" y="-38.1" size="1.778" layer="95"/>
<pinref part="JP1" gate="A" pin="4"/>
<wire x1="373.38" y1="-38.1" x2="391.16" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="UART_TX" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="PB6"/>
<wire x1="355.6" y1="38.1" x2="340.36" y2="38.1" width="0.1524" layer="91"/>
<label x="342.9" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<label x="373.38" y="-40.64" size="1.778" layer="95"/>
<pinref part="JP1" gate="A" pin="5"/>
<wire x1="373.38" y1="-40.64" x2="391.16" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="JP1" gate="A" pin="1"/>
<pinref part="R13" gate="G$1" pin="2"/>
<wire x1="391.16" y1="-30.48" x2="383.54" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="STM_DOT_LEFT" class="0">
<segment>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="193.04" y1="48.26" x2="213.36" y2="48.26" width="0.1524" layer="91"/>
<label x="193.04" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA15"/>
<wire x1="355.6" y1="55.88" x2="340.36" y2="55.88" width="0.1524" layer="91"/>
<label x="342.9" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="STM_DOT_RIGHT" class="0">
<segment>
<pinref part="R12" gate="G$1" pin="1"/>
<wire x1="193.04" y1="22.86" x2="213.36" y2="22.86" width="0.1524" layer="91"/>
<label x="193.04" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="355.6" y1="33.02" x2="340.36" y2="33.02" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="PB8"/>
<label x="342.9" y="33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="STM_6" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="142.24" y1="48.26" x2="154.94" y2="48.26" width="0.1524" layer="91"/>
<label x="144.78" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA10"/>
<wire x1="355.6" y1="68.58" x2="340.36" y2="68.58" width="0.1524" layer="91"/>
<label x="342.9" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="STM_7" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="142.24" y1="22.86" x2="154.94" y2="22.86" width="0.1524" layer="91"/>
<label x="144.78" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PB4"/>
<wire x1="355.6" y1="43.18" x2="340.36" y2="43.18" width="0.1524" layer="91"/>
<label x="342.9" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="STM_8" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="142.24" y1="-2.54" x2="154.94" y2="-2.54" width="0.1524" layer="91"/>
<label x="144.78" y="-2.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA8"/>
<wire x1="355.6" y1="73.66" x2="340.36" y2="73.66" width="0.1524" layer="91"/>
<label x="342.9" y="73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="STM_9" class="0">
<segment>
<pinref part="R9" gate="G$1" pin="1"/>
<wire x1="142.24" y1="-27.94" x2="154.94" y2="-27.94" width="0.1524" layer="91"/>
<label x="144.78" y="-27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA9"/>
<wire x1="355.6" y1="71.12" x2="340.36" y2="71.12" width="0.1524" layer="91"/>
<label x="342.9" y="71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="STM_10" class="0">
<segment>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="142.24" y1="-55.88" x2="154.94" y2="-55.88" width="0.1524" layer="91"/>
<label x="144.78" y="-55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA11"/>
<wire x1="355.6" y1="66.04" x2="340.36" y2="66.04" width="0.1524" layer="91"/>
<label x="342.9" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="STM_5" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="76.2" y1="-55.88" x2="88.9" y2="-55.88" width="0.1524" layer="91"/>
<label x="78.74" y="-55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA0"/>
<wire x1="355.6" y1="96.52" x2="340.36" y2="96.52" width="0.1524" layer="91"/>
<label x="342.9" y="96.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="STM_4" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="76.2" y1="-27.94" x2="88.9" y2="-27.94" width="0.1524" layer="91"/>
<label x="78.74" y="-27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PB5"/>
<wire x1="355.6" y1="40.64" x2="340.36" y2="40.64" width="0.1524" layer="91"/>
<label x="342.9" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="STM_3" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="76.2" y1="-2.54" x2="88.9" y2="-2.54" width="0.1524" layer="91"/>
<label x="78.74" y="-2.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA3"/>
<wire x1="355.6" y1="88.9" x2="340.36" y2="88.9" width="0.1524" layer="91"/>
<label x="342.9" y="88.9" size="1.778" layer="95"/>
</segment>
</net>
<net name="STM_2" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="76.2" y1="22.86" x2="88.9" y2="22.86" width="0.1524" layer="91"/>
<label x="78.74" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA2"/>
<wire x1="355.6" y1="91.44" x2="340.36" y2="91.44" width="0.1524" layer="91"/>
<label x="342.9" y="91.44" size="1.778" layer="95"/>
</segment>
</net>
<net name="STM_1" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="76.2" y1="48.26" x2="88.9" y2="48.26" width="0.1524" layer="91"/>
<label x="78.74" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA1"/>
<wire x1="355.6" y1="93.98" x2="340.36" y2="93.98" width="0.1524" layer="91"/>
<label x="342.9" y="93.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="PB3"/>
<wire x1="383.54" y1="45.72" x2="340.36" y2="45.72" width="0.1524" layer="91"/>
<pinref part="TP3" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="BC"/>
<pinref part="R16" gate="G$1" pin="1"/>
<wire x1="490.22" y1="-7.62" x2="482.6" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PWM_BLUE" class="0">
<segment>
<wire x1="515.62" y1="-7.62" x2="500.38" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="R16" gate="G$1" pin="2"/>
<label x="502.92" y="-7.62" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="355.6" y1="50.8" x2="340.36" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="PB0"/>
<label x="342.9" y="50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM_GREEN" class="0">
<segment>
<pinref part="R15" gate="G$1" pin="2"/>
<wire x1="515.62" y1="7.62" x2="500.38" y2="7.62" width="0.1524" layer="91"/>
<label x="502.92" y="7.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PA4"/>
<wire x1="355.6" y1="86.36" x2="340.36" y2="86.36" width="0.1524" layer="91"/>
<label x="342.9" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM_RED" class="0">
<segment>
<pinref part="R14" gate="G$1" pin="2"/>
<wire x1="515.62" y1="0" x2="500.38" y2="0" width="0.1524" layer="91"/>
<label x="502.92" y="0" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="PB1"/>
<wire x1="355.6" y1="48.26" x2="340.36" y2="48.26" width="0.1524" layer="91"/>
<label x="342.9" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="GC"/>
<pinref part="R15" gate="G$1" pin="1"/>
<wire x1="482.6" y1="7.62" x2="490.22" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="RC"/>
<pinref part="R14" gate="G$1" pin="1"/>
<wire x1="482.6" y1="0" x2="490.22" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
