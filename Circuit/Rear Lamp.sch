<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.2.2">
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
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="diode" urn="urn:adsk.eagle:library:210">
<description>&lt;b&gt;Diodes&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Motorola : www.onsemi.com
&lt;li&gt;Fairchild : www.fairchildsemi.com
&lt;li&gt;Philips : www.semiconductors.com
&lt;li&gt;Vishay : www.vishay.de
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="P1-10" library_version="1">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
diameter 3 mm, horizontal, grid 10.16 mm</description>
<wire x1="-3.175" y1="-1.524" x2="3.175" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.524" x2="-3.175" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.524" x2="3.175" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.524" x2="-3.175" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.762" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.762" layer="51"/>
<pad name="C" x="-5.08" y="0" drill="1.1176" shape="long"/>
<pad name="A" x="5.08" y="0" drill="1.1176" shape="long"/>
<text x="-3.048" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.794" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="-3.937" y1="-0.381" x2="-3.175" y2="0.381" layer="21"/>
<rectangle x1="3.175" y1="-0.381" x2="3.937" y2="0.381" layer="21"/>
</package>
<package name="P2-15" library_version="1">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
diameter 5 mm, horizontal, grid 12.7 mm</description>
<wire x1="-4.826" y1="-2.54" x2="-4.826" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.54" x2="4.826" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.54" x2="4.826" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.54" x2="-4.826" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0" x2="6.223" y2="0" width="1.27" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.223" y2="0" width="1.27" layer="51"/>
<pad name="C" x="-7.62" y="0" drill="1.4986" shape="long"/>
<pad name="A" x="7.62" y="0" drill="1.4986" shape="long"/>
<text x="-4.8006" y="2.8194" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.9022" y="-4.699" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-2.54" x2="-2.921" y2="2.54" layer="21"/>
<rectangle x1="4.826" y1="-0.635" x2="5.969" y2="0.635" layer="21"/>
<rectangle x1="-5.969" y1="-0.635" x2="-4.826" y2="0.635" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="D" library_version="1">
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<text x="2.54" y="0.4826" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.3114" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<text x="-2.54" y="0" size="0.4064" layer="99" align="center">SpiceOrder 1</text>
<text x="2.54" y="0" size="0.4064" layer="99" align="center">SpiceOrder 2</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BA157" prefix="D" library_version="1">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
fast soft-recovery controlled avalanche rectifier</description>
<gates>
<gate name="1" symbol="D" x="0" y="0"/>
</gates>
<devices>
<device name="" package="P1-10">
<connects>
<connect gate="1" pin="A" pad="A"/>
<connect gate="1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="BA296" prefix="D" library_version="1">
<description>&lt;B&gt;DIODE&lt;/B&gt;</description>
<gates>
<gate name="1" symbol="D" x="0" y="0"/>
</gates>
<devices>
<device name="" package="P2-15">
<connects>
<connect gate="1" pin="A" pad="A"/>
<connect gate="1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="eagle-ltspice" urn="urn:adsk.eagle:library:217">
<description>Default symbols for import LTspice schematics&lt;p&gt;
2012-10-29 alf@cadsoft.de&lt;br&gt;</description>
<packages>
<package name="0204/7" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 7.5 mm</description>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/10" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 10 mm</description>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="R0201" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; chip&lt;p&gt;
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="0.15" layer="21"/>
<smd name="1" x="-0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<smd name="2" x="0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0402" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0603" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0805" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1005" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1206" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1210" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8999" x2="0.3" y2="0.8999" layer="35"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1218" library_version="1">
<description>&lt;b&gt;CRCW1218 Thick Film, Rectangular Chip Resistors&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com .. dcrcw.pdf</description>
<wire x1="-0.913" y1="-2.219" x2="0.939" y2="-2.219" width="0.1524" layer="51"/>
<wire x1="0.913" y1="2.219" x2="-0.939" y2="2.219" width="0.1524" layer="51"/>
<rectangle x1="-1.651" y1="-2.3" x2="-0.9009" y2="2.3" layer="51"/>
<rectangle x1="0.9144" y1="-2.3" x2="1.6645" y2="2.3" layer="51"/>
<smd name="1" x="-1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<smd name="2" x="1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R2010" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R2012" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R2512" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R3216" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R3225" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R4527" library_version="1">
<description>&lt;b&gt;Package 4527&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<wire x1="-5.675" y1="-3.375" x2="5.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.65" y1="-3.375" x2="5.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.375" x2="-5.675" y2="3.375" width="0.2032" layer="21"/>
<wire x1="-5.675" y1="3.375" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<smd name="1" x="-4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.715" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.715" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R5025" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R6332" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
<smd name="1" x="-3.1" y="0" dx="1" dy="3.2" layer="1"/>
<smd name="2" x="3.1" y="0" dx="1" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="R" library_version="1">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<text x="-5.08" y="0" size="0.4064" layer="99" align="center">SpiceOrder 1</text>
<text x="5.08" y="0" size="0.4064" layer="99" align="center">SpiceOrder 2</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" prefix="R" uservalue="yes" library_version="1">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="0204/7" package="0204/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0201" package="R0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0402" package="R0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1005" package="R1005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1210" package="R1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1218" package="R1218">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2012" package="R2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3216" package="R3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3225" package="R3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R4527" package="R4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R5025" package="R5025">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R6332" package="R6332">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pot" urn="urn:adsk.eagle:library:331">
<description>&lt;b&gt;Potentiometers&lt;/b&gt;&lt;p&gt;
Beckman, Copal, Piher, Spectrol, Schukat&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="3RP/1610N" library_version="1">
<description>&lt;b&gt;16mm Potentiometer&lt;/b&gt; one level&lt;p&gt;
Source: http://www.alphapotentiometers.net/html/16mm_pot_2.html</description>
<wire x1="-8.35" y1="-3.7" x2="8.35" y2="-3.7" width="0.2032" layer="21"/>
<wire x1="-8.35" y1="-5.7" x2="-7.25" y2="-5.7" width="0.2032" layer="21"/>
<wire x1="-8.35" y1="-3.7" x2="-8.35" y2="-5.7" width="0.2032" layer="21"/>
<wire x1="-7.25" y1="-5.7" x2="-7.25" y2="-3.8" width="0.2032" layer="21"/>
<wire x1="-8.35" y1="-1.7" x2="8.35" y2="-1.7" width="0.2032" layer="21"/>
<wire x1="-8.35" y1="5.4" x2="8.35" y2="5.4" width="0.2032" layer="21"/>
<wire x1="-2.9" y1="-10.2" x2="-2.9" y2="-13.7" width="0.2032" layer="21"/>
<wire x1="2.9" y1="-13.7" x2="2.9" y2="-10.2" width="0.2032" layer="21"/>
<wire x1="-3.4" y1="-3.8" x2="-3.4" y2="-9.9" width="0.2032" layer="21"/>
<wire x1="-3.4" y1="-9.9" x2="-2.9" y2="-10.2" width="0.2032" layer="21"/>
<wire x1="2.9" y1="-10.2" x2="3.4" y2="-9.9" width="0.2032" layer="21"/>
<wire x1="3.4" y1="-9.9" x2="3.4" y2="-3.8" width="0.2032" layer="21"/>
<wire x1="-2.9" y1="-10.2" x2="2.9" y2="-10.2" width="0.2032" layer="21"/>
<wire x1="-2.9" y1="-13.7" x2="2.9" y2="-13.7" width="0.2032" layer="21"/>
<wire x1="-8.35" y1="-3.7" x2="-8.35" y2="5.4" width="0.2032" layer="21"/>
<wire x1="8.35" y1="-3.7" x2="8.35" y2="5.4" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="-9.525" x2="3.3" y2="-9" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="-9.025" x2="3.3" y2="-8.5" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="-8.525" x2="3.3" y2="-8" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="-8.025" x2="3.3" y2="-7.5" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="-7.525" x2="3.3" y2="-7" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="-7.025" x2="3.3" y2="-6.5" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="-6.525" x2="3.3" y2="-6" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="-6.025" x2="3.3" y2="-5.5" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="-5.525" x2="3.3" y2="-5" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="-5.025" x2="3.3" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="-4.525" x2="3.3" y2="-4" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-10.025" x2="3.3" y2="-9.5" width="0.2032" layer="21"/>
<pad name="1" x="-5" y="0" drill="1.2" diameter="2.1844"/>
<pad name="2" x="0" y="0" drill="1.2" diameter="2.1844"/>
<pad name="3" x="5" y="0" drill="1.2" diameter="2.1844"/>
<text x="-8.255" y="5.715" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="POT_EU-" library_version="1">
<wire x1="-0.762" y1="2.54" x2="-0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="-2.54" x2="0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="1.651" y2="0" width="0.1524" layer="94"/>
<wire x1="1.651" y1="0" x2="-1.8796" y2="1.7526" width="0.1524" layer="94"/>
<wire x1="0.762" y1="2.54" x2="-0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.762" y1="-2.54" x2="0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.1597" y1="1.2939" x2="-3.1989" y2="2.4495" width="0.1524" layer="94"/>
<wire x1="-3.1989" y1="2.4495" x2="-1.7018" y2="2.2352" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.508" x2="-3.048" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.508" x2="-2.032" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-2.1597" y1="1.2939" x2="-1.7018" y2="2.2352" width="0.1524" layer="94"/>
<text x="-5.969" y="-3.81" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-3.81" y="-3.81" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="A" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="E" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="S" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="3RP/1610N" prefix="R" uservalue="yes" library_version="1">
<description>&lt;b&gt;16mm Potentiometer&lt;/b&gt; one level&lt;p&gt;
Source: http://www.alphapotentiometers.net/html/16mm_pot_2.html</description>
<gates>
<gate name="G$1" symbol="POT_EU-" x="0" y="0"/>
</gates>
<devices>
<device name="" package="3RP/1610N">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-garry" urn="urn:adsk.eagle:library:147">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;a href="www.mpe-connector.de"&gt;Menufacturer&lt;/a&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="332-50" library_version="1">
<description>&lt;b&gt;50 Pin - 2mm Dual Row&lt;/b&gt;&lt;p&gt;
Source: www.mpe-connector.de / garry_shortform_2012.pdf</description>
<wire x1="-24.85" y1="-1.9" x2="24.85" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="24.85" y1="-1.9" x2="24.85" y2="-0.4" width="0.2032" layer="21"/>
<wire x1="24.85" y1="0.4" x2="24.85" y2="1.9" width="0.2032" layer="21"/>
<wire x1="24.85" y1="1.9" x2="-24.85" y2="1.9" width="0.2032" layer="21"/>
<wire x1="-24.85" y1="1.9" x2="-24.85" y2="0.4" width="0.2032" layer="21"/>
<wire x1="-24.85" y1="-0.4" x2="-24.85" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="-24.85" y1="0.4" x2="-24.85" y2="-0.4" width="0.2032" layer="21" curve="-129.185"/>
<wire x1="24.85" y1="-0.4" x2="24.85" y2="0.4" width="0.2032" layer="21" curve="-129.185"/>
<pad name="1" x="-24" y="-1" drill="0.9" diameter="1.27"/>
<pad name="2" x="-24" y="1" drill="0.9" diameter="1.27"/>
<pad name="3" x="-22" y="-1" drill="0.9" diameter="1.27"/>
<pad name="4" x="-22" y="1" drill="0.9" diameter="1.27"/>
<pad name="5" x="-20" y="-1" drill="0.9" diameter="1.27"/>
<pad name="6" x="-20" y="1" drill="0.9" diameter="1.27"/>
<pad name="7" x="-18" y="-1" drill="0.9" diameter="1.27"/>
<pad name="8" x="-18" y="1" drill="0.9" diameter="1.27"/>
<pad name="9" x="-16" y="-1" drill="0.9" diameter="1.27"/>
<pad name="10" x="-16" y="1" drill="0.9" diameter="1.27"/>
<pad name="11" x="-14" y="-1" drill="0.9" diameter="1.27"/>
<pad name="12" x="-14" y="1" drill="0.9" diameter="1.27"/>
<pad name="13" x="-12" y="-1" drill="0.9" diameter="1.27"/>
<pad name="14" x="-12" y="1" drill="0.9" diameter="1.27"/>
<pad name="15" x="-10" y="-1" drill="0.9" diameter="1.27"/>
<pad name="16" x="-10" y="1" drill="0.9" diameter="1.27"/>
<pad name="17" x="-8" y="-1" drill="0.9" diameter="1.27"/>
<pad name="18" x="-8" y="1" drill="0.9" diameter="1.27"/>
<pad name="19" x="-6" y="-1" drill="0.9" diameter="1.27"/>
<pad name="20" x="-6" y="1" drill="0.9" diameter="1.27"/>
<pad name="21" x="-4" y="-1" drill="0.9" diameter="1.27"/>
<pad name="22" x="-4" y="1" drill="0.9" diameter="1.27"/>
<pad name="23" x="-2" y="-1" drill="0.9" diameter="1.27"/>
<pad name="24" x="-2" y="1" drill="0.9" diameter="1.27"/>
<pad name="25" x="0" y="-1" drill="0.9" diameter="1.27"/>
<pad name="26" x="0" y="1" drill="0.9" diameter="1.27"/>
<pad name="27" x="2" y="-1" drill="0.9" diameter="1.27"/>
<pad name="28" x="2" y="1" drill="0.9" diameter="1.27"/>
<pad name="29" x="4" y="-1" drill="0.9" diameter="1.27"/>
<pad name="30" x="4" y="1" drill="0.9" diameter="1.27"/>
<pad name="31" x="6" y="-1" drill="0.9" diameter="1.27"/>
<pad name="32" x="6" y="1" drill="0.9" diameter="1.27"/>
<pad name="33" x="8" y="-1" drill="0.9" diameter="1.27"/>
<pad name="34" x="8" y="1" drill="0.9" diameter="1.27"/>
<pad name="35" x="10" y="-1" drill="0.9" diameter="1.27"/>
<pad name="36" x="10" y="1" drill="0.9" diameter="1.27"/>
<pad name="37" x="12" y="-1" drill="0.9" diameter="1.27"/>
<pad name="38" x="12" y="1" drill="0.9" diameter="1.27"/>
<pad name="39" x="14" y="-1" drill="0.9" diameter="1.27"/>
<pad name="40" x="14" y="1" drill="0.9" diameter="1.27"/>
<pad name="41" x="16" y="-1" drill="0.9" diameter="1.27"/>
<pad name="42" x="16" y="1" drill="0.9" diameter="1.27"/>
<pad name="43" x="18" y="-1" drill="0.9" diameter="1.27"/>
<pad name="44" x="18" y="1" drill="0.9" diameter="1.27"/>
<pad name="45" x="20" y="-1" drill="0.9" diameter="1.27"/>
<pad name="46" x="20" y="1" drill="0.9" diameter="1.27"/>
<pad name="47" x="22" y="-1" drill="0.9" diameter="1.27"/>
<pad name="48" x="22" y="1" drill="0.9" diameter="1.27"/>
<pad name="49" x="24" y="-1" drill="0.9" diameter="1.27"/>
<pad name="50" x="24" y="1" drill="0.9" diameter="1.27"/>
<text x="-24.65" y="-1.75" size="0.3048" layer="21" font="vector">1</text>
<text x="-24.62" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-18.27" y="2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-24.25" y1="-1.25" x2="-23.75" y2="-0.75" layer="51"/>
<rectangle x1="-24.25" y1="0.75" x2="-23.75" y2="1.25" layer="51"/>
<rectangle x1="-22.25" y1="-1.25" x2="-21.75" y2="-0.75" layer="51"/>
<rectangle x1="-22.25" y1="0.75" x2="-21.75" y2="1.25" layer="51"/>
<rectangle x1="-20.25" y1="-1.25" x2="-19.75" y2="-0.75" layer="51"/>
<rectangle x1="-20.25" y1="0.75" x2="-19.75" y2="1.25" layer="51"/>
<rectangle x1="-18.25" y1="-1.25" x2="-17.75" y2="-0.75" layer="51"/>
<rectangle x1="-18.25" y1="0.75" x2="-17.75" y2="1.25" layer="51"/>
<rectangle x1="-16.25" y1="-1.25" x2="-15.75" y2="-0.75" layer="51"/>
<rectangle x1="-16.25" y1="0.75" x2="-15.75" y2="1.25" layer="51"/>
<rectangle x1="-14.25" y1="-1.25" x2="-13.75" y2="-0.75" layer="51"/>
<rectangle x1="-14.25" y1="0.75" x2="-13.75" y2="1.25" layer="51"/>
<rectangle x1="-12.25" y1="-1.25" x2="-11.75" y2="-0.75" layer="51"/>
<rectangle x1="-12.25" y1="0.75" x2="-11.75" y2="1.25" layer="51"/>
<rectangle x1="-10.25" y1="-1.25" x2="-9.75" y2="-0.75" layer="51"/>
<rectangle x1="-10.25" y1="0.75" x2="-9.75" y2="1.25" layer="51"/>
<rectangle x1="-8.25" y1="-1.25" x2="-7.75" y2="-0.75" layer="51"/>
<rectangle x1="-8.25" y1="0.75" x2="-7.75" y2="1.25" layer="51"/>
<rectangle x1="-6.25" y1="-1.25" x2="-5.75" y2="-0.75" layer="51"/>
<rectangle x1="-6.25" y1="0.75" x2="-5.75" y2="1.25" layer="51"/>
<rectangle x1="-4.25" y1="-1.25" x2="-3.75" y2="-0.75" layer="51"/>
<rectangle x1="-4.25" y1="0.75" x2="-3.75" y2="1.25" layer="51"/>
<rectangle x1="-2.25" y1="-1.25" x2="-1.75" y2="-0.75" layer="51"/>
<rectangle x1="-2.25" y1="0.75" x2="-1.75" y2="1.25" layer="51"/>
<rectangle x1="-0.25" y1="-1.25" x2="0.25" y2="-0.75" layer="51"/>
<rectangle x1="-0.25" y1="0.75" x2="0.25" y2="1.25" layer="51"/>
<rectangle x1="1.75" y1="-1.25" x2="2.25" y2="-0.75" layer="51"/>
<rectangle x1="1.75" y1="0.75" x2="2.25" y2="1.25" layer="51"/>
<rectangle x1="3.75" y1="-1.25" x2="4.25" y2="-0.75" layer="51"/>
<rectangle x1="3.75" y1="0.75" x2="4.25" y2="1.25" layer="51"/>
<rectangle x1="5.75" y1="-1.25" x2="6.25" y2="-0.75" layer="51"/>
<rectangle x1="5.75" y1="0.75" x2="6.25" y2="1.25" layer="51"/>
<rectangle x1="7.75" y1="-1.25" x2="8.25" y2="-0.75" layer="51"/>
<rectangle x1="7.75" y1="0.75" x2="8.25" y2="1.25" layer="51"/>
<rectangle x1="9.75" y1="-1.25" x2="10.25" y2="-0.75" layer="51"/>
<rectangle x1="9.75" y1="0.75" x2="10.25" y2="1.25" layer="51"/>
<rectangle x1="11.75" y1="-1.25" x2="12.25" y2="-0.75" layer="51"/>
<rectangle x1="11.75" y1="0.75" x2="12.25" y2="1.25" layer="51"/>
<rectangle x1="13.75" y1="-1.25" x2="14.25" y2="-0.75" layer="51"/>
<rectangle x1="13.75" y1="0.75" x2="14.25" y2="1.25" layer="51"/>
<rectangle x1="15.75" y1="-1.25" x2="16.25" y2="-0.75" layer="51"/>
<rectangle x1="15.75" y1="0.75" x2="16.25" y2="1.25" layer="51"/>
<rectangle x1="17.75" y1="-1.25" x2="18.25" y2="-0.75" layer="51"/>
<rectangle x1="17.75" y1="0.75" x2="18.25" y2="1.25" layer="51"/>
<rectangle x1="19.75" y1="-1.25" x2="20.25" y2="-0.75" layer="51"/>
<rectangle x1="19.75" y1="0.75" x2="20.25" y2="1.25" layer="51"/>
<rectangle x1="21.75" y1="-1.25" x2="22.25" y2="-0.75" layer="51"/>
<rectangle x1="21.75" y1="0.75" x2="22.25" y2="1.25" layer="51"/>
<rectangle x1="23.75" y1="-1.25" x2="24.25" y2="-0.75" layer="51"/>
<rectangle x1="23.75" y1="0.75" x2="24.25" y2="1.25" layer="51"/>
<wire x1="-24" y1="1" x2="-24" y2="-6" width="0.55" layer="51"/>
<wire x1="-22" y1="1" x2="-22" y2="-6" width="0.55" layer="51"/>
<wire x1="-20" y1="1" x2="-20" y2="-6" width="0.55" layer="51"/>
<wire x1="-18" y1="1" x2="-18" y2="-6" width="0.55" layer="51"/>
<wire x1="-16" y1="1" x2="-16" y2="-6" width="0.55" layer="51"/>
<wire x1="-14" y1="1" x2="-14" y2="-6" width="0.55" layer="51"/>
<wire x1="-12" y1="1" x2="-12" y2="-6" width="0.55" layer="51"/>
<wire x1="-10" y1="1" x2="-10" y2="-6" width="0.55" layer="51"/>
<wire x1="-8" y1="1" x2="-8" y2="-6" width="0.55" layer="51"/>
<wire x1="-6" y1="1" x2="-6" y2="-6" width="0.55" layer="51"/>
<wire x1="-4" y1="1" x2="-4" y2="-6" width="0.55" layer="51"/>
<wire x1="-2" y1="1" x2="-2" y2="-6" width="0.55" layer="51"/>
<wire x1="0" y1="1" x2="0" y2="-6" width="0.55" layer="51"/>
<wire x1="2" y1="1" x2="2" y2="-6" width="0.55" layer="51"/>
<wire x1="4" y1="1" x2="4" y2="-6" width="0.55" layer="51"/>
<wire x1="6" y1="1" x2="6" y2="-6" width="0.55" layer="51"/>
<wire x1="8" y1="1" x2="8" y2="-6" width="0.55" layer="51"/>
<wire x1="10" y1="1" x2="10" y2="-6" width="0.55" layer="51"/>
<wire x1="12" y1="1" x2="12" y2="-6" width="0.55" layer="51"/>
<wire x1="14" y1="1" x2="14" y2="-6" width="0.55" layer="51"/>
<wire x1="16" y1="1" x2="16" y2="-6" width="0.55" layer="51"/>
<wire x1="18" y1="1" x2="18" y2="-6" width="0.55" layer="51"/>
<wire x1="20" y1="1" x2="20" y2="-6" width="0.55" layer="51"/>
<wire x1="22" y1="1" x2="22" y2="-6" width="0.55" layer="51"/>
<wire x1="24" y1="1" x2="24" y2="-6" width="0.55" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MV" library_version="1">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M" library_version="1">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="332-50" prefix="X" library_version="1">
<description>&lt;b&gt;50 Pin - 2mm Dual Row&lt;/b&gt;&lt;p&gt;
Source: www.mpe-connector.de / garry_shortform_2012.pdf</description>
<gates>
<gate name="-1" symbol="MV" x="-10.16" y="30.48" addlevel="always"/>
<gate name="-2" symbol="MV" x="10.16" y="30.48" addlevel="always"/>
<gate name="-3" symbol="M" x="-10.16" y="27.94" addlevel="always"/>
<gate name="-4" symbol="M" x="10.16" y="27.94" addlevel="always"/>
<gate name="-5" symbol="M" x="-10.16" y="25.4" addlevel="always"/>
<gate name="-6" symbol="M" x="10.16" y="25.4" addlevel="always"/>
<gate name="-7" symbol="M" x="-10.16" y="22.86" addlevel="always"/>
<gate name="-8" symbol="M" x="10.16" y="22.86" addlevel="always"/>
<gate name="-9" symbol="M" x="-10.16" y="20.32" addlevel="always"/>
<gate name="-10" symbol="M" x="10.16" y="20.32" addlevel="always"/>
<gate name="-11" symbol="M" x="-10.16" y="17.78" addlevel="always"/>
<gate name="-12" symbol="M" x="10.16" y="17.78" addlevel="always"/>
<gate name="-13" symbol="M" x="-10.16" y="15.24" addlevel="always"/>
<gate name="-14" symbol="M" x="10.16" y="15.24" addlevel="always"/>
<gate name="-15" symbol="M" x="-10.16" y="12.7" addlevel="always"/>
<gate name="-16" symbol="M" x="10.16" y="12.7" addlevel="always"/>
<gate name="-17" symbol="M" x="-10.16" y="10.16" addlevel="always"/>
<gate name="-18" symbol="M" x="10.16" y="10.16" addlevel="always"/>
<gate name="-19" symbol="M" x="-10.16" y="7.62" addlevel="always"/>
<gate name="-20" symbol="M" x="10.16" y="7.62" addlevel="always"/>
<gate name="-21" symbol="M" x="-10.16" y="5.08" addlevel="always"/>
<gate name="-22" symbol="M" x="10.16" y="5.08" addlevel="always"/>
<gate name="-23" symbol="M" x="-10.16" y="2.54" addlevel="always"/>
<gate name="-24" symbol="M" x="10.16" y="2.54" addlevel="always"/>
<gate name="-25" symbol="M" x="-10.16" y="0" addlevel="always"/>
<gate name="-26" symbol="M" x="10.16" y="0" addlevel="always"/>
<gate name="-27" symbol="M" x="-10.16" y="-2.54" addlevel="always"/>
<gate name="-28" symbol="M" x="10.16" y="-2.54" addlevel="always"/>
<gate name="-29" symbol="M" x="-10.16" y="-5.08" addlevel="always"/>
<gate name="-30" symbol="M" x="10.16" y="-5.08" addlevel="always"/>
<gate name="-31" symbol="M" x="-10.16" y="-7.62" addlevel="always"/>
<gate name="-32" symbol="M" x="10.16" y="-7.62" addlevel="always"/>
<gate name="-33" symbol="M" x="-10.16" y="-10.16" addlevel="always"/>
<gate name="-34" symbol="M" x="10.16" y="-10.16" addlevel="always"/>
<gate name="-35" symbol="M" x="-10.16" y="-12.7" addlevel="always"/>
<gate name="-36" symbol="M" x="10.16" y="-12.7" addlevel="always"/>
<gate name="-37" symbol="M" x="-10.16" y="-15.24" addlevel="always"/>
<gate name="-38" symbol="M" x="10.16" y="-15.24" addlevel="always"/>
<gate name="-39" symbol="M" x="-10.16" y="-17.78" addlevel="always"/>
<gate name="-40" symbol="M" x="10.16" y="-17.78" addlevel="always"/>
<gate name="-41" symbol="M" x="-10.16" y="-20.32" addlevel="always"/>
<gate name="-42" symbol="M" x="10.16" y="-20.32" addlevel="always"/>
<gate name="-43" symbol="M" x="-10.16" y="-22.86" addlevel="always"/>
<gate name="-44" symbol="M" x="10.16" y="-22.86" addlevel="always"/>
<gate name="-45" symbol="M" x="-10.16" y="-25.4" addlevel="always"/>
<gate name="-46" symbol="M" x="10.16" y="-25.4" addlevel="always"/>
<gate name="-47" symbol="M" x="-10.16" y="-27.94" addlevel="always"/>
<gate name="-48" symbol="M" x="10.16" y="-27.94" addlevel="always"/>
<gate name="-49" symbol="M" x="-10.16" y="-30.48" addlevel="always"/>
<gate name="-50" symbol="M" x="10.16" y="-30.48" addlevel="always"/>
</gates>
<devices>
<device name="" package="332-50">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-10" pin="S" pad="10"/>
<connect gate="-11" pin="S" pad="11"/>
<connect gate="-12" pin="S" pad="12"/>
<connect gate="-13" pin="S" pad="13"/>
<connect gate="-14" pin="S" pad="14"/>
<connect gate="-15" pin="S" pad="15"/>
<connect gate="-16" pin="S" pad="16"/>
<connect gate="-17" pin="S" pad="17"/>
<connect gate="-18" pin="S" pad="18"/>
<connect gate="-19" pin="S" pad="19"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-20" pin="S" pad="20"/>
<connect gate="-21" pin="S" pad="21"/>
<connect gate="-22" pin="S" pad="22"/>
<connect gate="-23" pin="S" pad="23"/>
<connect gate="-24" pin="S" pad="24"/>
<connect gate="-25" pin="S" pad="25"/>
<connect gate="-26" pin="S" pad="26"/>
<connect gate="-27" pin="S" pad="27"/>
<connect gate="-28" pin="S" pad="28"/>
<connect gate="-29" pin="S" pad="29"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-30" pin="S" pad="30"/>
<connect gate="-31" pin="S" pad="31"/>
<connect gate="-32" pin="S" pad="32"/>
<connect gate="-33" pin="S" pad="33"/>
<connect gate="-34" pin="S" pad="34"/>
<connect gate="-35" pin="S" pad="35"/>
<connect gate="-36" pin="S" pad="36"/>
<connect gate="-37" pin="S" pad="37"/>
<connect gate="-38" pin="S" pad="38"/>
<connect gate="-39" pin="S" pad="39"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-40" pin="S" pad="40"/>
<connect gate="-41" pin="S" pad="41"/>
<connect gate="-42" pin="S" pad="42"/>
<connect gate="-43" pin="S" pad="43"/>
<connect gate="-44" pin="S" pad="44"/>
<connect gate="-45" pin="S" pad="45"/>
<connect gate="-46" pin="S" pad="46"/>
<connect gate="-47" pin="S" pad="47"/>
<connect gate="-48" pin="S" pad="48"/>
<connect gate="-49" pin="S" pad="49"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-50" pin="S" pad="50"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
<connect gate="-9" pin="S" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
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
<part name="BRAKE_INTENSITY_6" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="STOP_LIGHT_3" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA296" device=""/>
<part name="STOP_LIGHT_2" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA296" device=""/>
<part name="STOP_LIGHT_1" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA296" device=""/>
<part name="BRAKE_INTENSITY_5" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="BRAKE_INTENSITY_4" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="BRAKE_INTENSITY_3" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="BRAKE_INTENSITY_2" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="BRAKE_INTENSITY_1" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R1" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="R2" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="R3" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="R4" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="R5" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="R6" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="R7" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="R8" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="R9" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="BACKWARDS_DRIVING_2" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="BACKWARDS_DRIVING_1" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R10" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="R11" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="TURN_INDICATOR_6" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="TURN_INDICATOR_5" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R12" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="R13" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="TURN_INDICATOR_4" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R14" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="TURN_INDICATOR_3" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R15" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="TURN_INDICATOR_2" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R16" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="TURN_INDICATOR_1" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R17" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="R18" library="pot" library_urn="urn:adsk.eagle:library:331" deviceset="3RP/1610N" device=""/>
<part name="D1" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA296" device=""/>
<part name="R19" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="220"/>
<part name="X1" library="con-garry" library_urn="urn:adsk.eagle:library:147" deviceset="332-50" device=""/>
<part name="X2" library="con-garry" library_urn="urn:adsk.eagle:library:147" deviceset="332-50" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="160.02" y="241.3" size="1.778" layer="91" rot="R90">GND</text>
<text x="157.48" y="243.84" size="1.778" layer="91" rot="R90">VDD</text>
<text x="154.94" y="241.3" size="1.778" layer="91" rot="R90">GND</text>
<text x="152.4" y="243.84" size="1.778" layer="91" rot="R90">PC1</text>
<text x="149.86" y="241.3" size="1.778" layer="91" rot="R90">PC3</text>
<text x="147.32" y="243.84" size="1.778" layer="91" rot="R90">PA1</text>
<text x="144.78" y="241.3" size="1.778" layer="91" rot="R90">PA3</text>
<text x="142.24" y="243.84" size="1.778" layer="91" rot="R90">PA5</text>
<text x="139.7" y="241.3" size="1.778" layer="91" rot="R90">PA7</text>
<text x="137.16" y="243.84" size="1.778" layer="91" rot="R90">PC5</text>
<text x="134.62" y="241.3" size="1.778" layer="91" rot="R90">PB1</text>
<text x="132.08" y="243.84" size="1.778" layer="91" rot="R90">GND</text>
<text x="129.54" y="241.3" size="1.778" layer="91" rot="R90">PE7</text>
<text x="127" y="243.84" size="1.778" layer="91" rot="R90">PE9</text>
<text x="124.46" y="241.3" size="1.778" layer="91" rot="R90">PE11</text>
<text x="121.92" y="243.84" size="1.778" layer="91" rot="R90">PE13</text>
<text x="119.38" y="241.3" size="1.778" layer="91" rot="R90">PE15</text>
<text x="116.84" y="243.84" size="1.778" layer="91" rot="R90">PB11</text>
<text x="114.3" y="241.3" size="1.778" layer="91" rot="R90">PB13</text>
<text x="111.76" y="243.84" size="1.778" layer="91" rot="R90">PB15</text>
<text x="109.22" y="241.3" size="1.778" layer="91" rot="R90">PD9</text>
<text x="106.68" y="243.84" size="1.778" layer="91" rot="R90">PD11</text>
<text x="104.14" y="241.3" size="1.778" layer="91" rot="R90">PD13</text>
<text x="101.6" y="243.84" size="1.778" layer="91" rot="R90">PD15</text>
<text x="99.06" y="241.3" size="1.778" layer="91" rot="R90">GND</text>
<text x="160.02" y="210.82" size="1.778" layer="91" rot="R90">GND</text>
<text x="157.48" y="213.36" size="1.778" layer="91" rot="R90">VDD</text>
<text x="154.94" y="210.82" size="1.778" layer="91" rot="R90">NRST</text>
<text x="152.4" y="213.36" size="1.778" layer="91" rot="R90">PC0</text>
<text x="149.86" y="210.82" size="1.778" layer="91" rot="R90">PC2</text>
<text x="147.32" y="213.36" size="1.778" layer="91" rot="R90">PA0</text>
<text x="144.78" y="210.82" size="1.778" layer="91" rot="R90">PA2</text>
<text x="142.24" y="213.36" size="1.778" layer="91" rot="R90">PA4</text>
<text x="139.7" y="210.82" size="1.778" layer="91" rot="R90">PA6</text>
<text x="137.16" y="213.36" size="1.778" layer="91" rot="R90">PC4</text>
<text x="134.62" y="210.82" size="1.778" layer="91" rot="R90">PB0</text>
<text x="132.08" y="213.36" size="1.778" layer="91" rot="R90">PB2</text>
<text x="129.54" y="210.82" size="1.778" layer="91" rot="R90">PE8</text>
<text x="127" y="213.36" size="1.778" layer="91" rot="R90">PE10</text>
<text x="124.46" y="210.82" size="1.778" layer="91" rot="R90">PE12</text>
<text x="121.92" y="213.36" size="1.778" layer="91" rot="R90">PE14</text>
<text x="119.38" y="210.82" size="1.778" layer="91" rot="R90">PB10</text>
<text x="116.84" y="213.36" size="1.778" layer="91" rot="R90">PB12</text>
<text x="114.3" y="210.82" size="1.778" layer="91" rot="R90">PB14</text>
<text x="111.76" y="213.36" size="1.778" layer="91" rot="R90">PD8</text>
<text x="109.22" y="210.82" size="1.778" layer="91" rot="R90">PD10</text>
<text x="106.68" y="213.36" size="1.778" layer="91" rot="R90">PD12</text>
<text x="104.14" y="210.82" size="1.778" layer="91" rot="R90">PD14</text>
<text x="101.6" y="213.36" size="1.778" layer="91" rot="R90">NC</text>
<text x="99.06" y="210.82" size="1.778" layer="91" rot="R90">GND</text>
<text x="160.02" y="182.88" size="1.778" layer="91" rot="R90">GND</text>
<text x="157.48" y="185.42" size="1.778" layer="91" rot="R90">5V</text>
<text x="154.94" y="182.88" size="1.778" layer="91" rot="R90">3V</text>
<text x="152.4" y="185.42" size="1.778" layer="91" rot="R90">PH0</text>
<text x="149.86" y="182.88" size="1.778" layer="91" rot="R90">PC14</text>
<text x="147.32" y="185.42" size="1.778" layer="91" rot="R90">PE6</text>
<text x="144.78" y="182.88" size="1.778" layer="91" rot="R90">PE4</text>
<text x="142.24" y="185.42" size="1.778" layer="91" rot="R90">PE2</text>
<text x="139.7" y="182.88" size="1.778" layer="91" rot="R90">PE0</text>
<text x="137.16" y="185.42" size="1.778" layer="91" rot="R90">PB8</text>
<text x="134.62" y="182.88" size="1.778" layer="91" rot="R90">BOOT0</text>
<text x="132.08" y="185.42" size="1.778" layer="91" rot="R90">PB6</text>
<text x="129.54" y="182.88" size="1.778" layer="91" rot="R90">PB4</text>
<text x="127" y="185.42" size="1.778" layer="91" rot="R90">PD7</text>
<text x="124.46" y="182.88" size="1.778" layer="91" rot="R90">PD5</text>
<text x="121.92" y="185.42" size="1.778" layer="91" rot="R90">PD3</text>
<text x="119.38" y="182.88" size="1.778" layer="91" rot="R90">PD1</text>
<text x="116.84" y="185.42" size="1.778" layer="91" rot="R90">PC12</text>
<text x="114.3" y="182.88" size="1.778" layer="91" rot="R90">PC10</text>
<text x="111.76" y="185.42" size="1.778" layer="91" rot="R90">PA14</text>
<text x="109.22" y="182.88" size="1.778" layer="91" rot="R90">PA10</text>
<text x="106.68" y="185.42" size="1.778" layer="91" rot="R90">PA8</text>
<text x="104.14" y="182.88" size="1.778" layer="91" rot="R90">PC8</text>
<text x="101.6" y="185.42" size="1.778" layer="91" rot="R90">PC6</text>
<text x="99.06" y="182.88" size="1.778" layer="91" rot="R90">GND</text>
<text x="160.02" y="154.94" size="1.778" layer="91" rot="R90">GND</text>
<text x="157.48" y="157.48" size="1.778" layer="91" rot="R90">5V</text>
<text x="154.94" y="154.94" size="1.778" layer="91" rot="R90">3V</text>
<text x="152.4" y="157.48" size="1.778" layer="91" rot="R90">PH1</text>
<text x="149.86" y="154.94" size="1.778" layer="91" rot="R90">PC15</text>
<text x="147.32" y="157.48" size="1.778" layer="91" rot="R90">PC13</text>
<text x="144.78" y="154.94" size="1.778" layer="91" rot="R90">PE5</text>
<text x="142.24" y="157.48" size="1.778" layer="91" rot="R90">PE3</text>
<text x="139.7" y="154.94" size="1.778" layer="91" rot="R90">PE1</text>
<text x="137.16" y="157.48" size="1.778" layer="91" rot="R90">PB9</text>
<text x="134.62" y="154.94" size="1.778" layer="91" rot="R90">VDD</text>
<text x="132.08" y="157.48" size="1.778" layer="91" rot="R90">PB7</text>
<text x="129.54" y="154.94" size="1.778" layer="91" rot="R90">PB5</text>
<text x="127" y="157.48" size="1.778" layer="91" rot="R90">PB3</text>
<text x="124.46" y="154.94" size="1.778" layer="91" rot="R90">PD6</text>
<text x="121.92" y="157.48" size="1.778" layer="91" rot="R90">PD4</text>
<text x="119.38" y="154.94" size="1.778" layer="91" rot="R90">PD2</text>
<text x="116.84" y="157.48" size="1.778" layer="91" rot="R90">PD0</text>
<text x="114.3" y="154.94" size="1.778" layer="91" rot="R90">PC11</text>
<text x="111.76" y="157.48" size="1.778" layer="91" rot="R90">PA15</text>
<text x="109.22" y="154.94" size="1.778" layer="91" rot="R90">PA13</text>
<text x="106.68" y="157.48" size="1.778" layer="91" rot="R90">PA9</text>
<text x="104.14" y="154.94" size="1.778" layer="91" rot="R90">PC9</text>
<text x="101.6" y="157.48" size="1.778" layer="91" rot="R90">PC7</text>
<text x="99.06" y="154.94" size="1.778" layer="91" rot="R90">GND</text>
</plain>
<instances>
<instance part="BRAKE_INTENSITY_6" gate="1" x="160.02" y="78.74" rot="R270"/>
<instance part="STOP_LIGHT_3" gate="1" x="165.1" y="33.02" rot="R270"/>
<instance part="STOP_LIGHT_2" gate="1" x="152.4" y="33.02" rot="R270"/>
<instance part="STOP_LIGHT_1" gate="1" x="139.7" y="33.02" rot="R270"/>
<instance part="BRAKE_INTENSITY_5" gate="1" x="147.32" y="78.74" rot="R270"/>
<instance part="BRAKE_INTENSITY_4" gate="1" x="134.62" y="78.74" rot="R270"/>
<instance part="BRAKE_INTENSITY_3" gate="1" x="124.46" y="73.66" rot="R270"/>
<instance part="BRAKE_INTENSITY_2" gate="1" x="116.84" y="60.96" rot="R270"/>
<instance part="BRAKE_INTENSITY_1" gate="1" x="106.68" y="48.26" rot="R270"/>
<instance part="R1" gate="G$1" x="106.68" y="60.96" rot="R90"/>
<instance part="R2" gate="G$1" x="116.84" y="76.2" rot="R90"/>
<instance part="R3" gate="G$1" x="124.46" y="88.9" rot="R90"/>
<instance part="R4" gate="G$1" x="134.62" y="93.98" rot="R90"/>
<instance part="R5" gate="G$1" x="147.32" y="93.98" rot="R90"/>
<instance part="R6" gate="G$1" x="160.02" y="93.98" rot="R90"/>
<instance part="R7" gate="G$1" x="139.7" y="48.26" rot="R90"/>
<instance part="R8" gate="G$1" x="152.4" y="48.26" rot="R90"/>
<instance part="R9" gate="G$1" x="165.1" y="48.26" rot="R90"/>
<instance part="BACKWARDS_DRIVING_2" gate="1" x="83.82" y="33.02" rot="R270"/>
<instance part="BACKWARDS_DRIVING_1" gate="1" x="71.12" y="33.02" rot="R270"/>
<instance part="R10" gate="G$1" x="71.12" y="48.26" rot="R90"/>
<instance part="R11" gate="G$1" x="83.82" y="48.26" rot="R90"/>
<instance part="TURN_INDICATOR_6" gate="1" x="154.94" y="106.68" rot="R270"/>
<instance part="TURN_INDICATOR_5" gate="1" x="132.08" y="106.68" rot="R270"/>
<instance part="R12" gate="G$1" x="132.08" y="121.92" rot="R90"/>
<instance part="R13" gate="G$1" x="154.94" y="121.92" rot="R90"/>
<instance part="TURN_INDICATOR_4" gate="1" x="111.76" y="106.68" rot="R270"/>
<instance part="R14" gate="G$1" x="111.76" y="121.92" rot="R90"/>
<instance part="TURN_INDICATOR_3" gate="1" x="93.98" y="101.6" rot="R270"/>
<instance part="R15" gate="G$1" x="93.98" y="116.84" rot="R90"/>
<instance part="TURN_INDICATOR_2" gate="1" x="78.74" y="88.9" rot="R270"/>
<instance part="R16" gate="G$1" x="78.74" y="104.14" rot="R90"/>
<instance part="TURN_INDICATOR_1" gate="1" x="66.04" y="73.66" rot="R270"/>
<instance part="R17" gate="G$1" x="66.04" y="88.9" rot="R90"/>
<instance part="R18" gate="G$1" x="170.18" y="106.68"/>
<instance part="D1" gate="1" x="48.26" y="33.02" rot="R270"/>
<instance part="R19" gate="G$1" x="48.26" y="45.72" rot="R90"/>
<instance part="X1" gate="-1" x="99.06" y="144.78" rot="R90"/>
<instance part="X1" gate="-2" x="99.06" y="172.72" rot="R90"/>
<instance part="X1" gate="-3" x="101.6" y="144.78" rot="R90"/>
<instance part="X1" gate="-4" x="101.6" y="172.72" rot="R90"/>
<instance part="X1" gate="-5" x="104.14" y="144.78" rot="R90"/>
<instance part="X1" gate="-6" x="104.14" y="172.72" rot="R90"/>
<instance part="X1" gate="-7" x="106.68" y="144.78" rot="R90"/>
<instance part="X1" gate="-8" x="106.68" y="172.72" rot="R90"/>
<instance part="X1" gate="-9" x="109.22" y="144.78" rot="R90"/>
<instance part="X1" gate="-10" x="109.22" y="172.72" rot="R90"/>
<instance part="X1" gate="-11" x="111.76" y="144.78" rot="R90"/>
<instance part="X1" gate="-12" x="111.76" y="172.72" rot="R90"/>
<instance part="X1" gate="-13" x="114.3" y="144.78" rot="R90"/>
<instance part="X1" gate="-14" x="114.3" y="172.72" rot="R90"/>
<instance part="X1" gate="-15" x="116.84" y="144.78" rot="R90"/>
<instance part="X1" gate="-16" x="116.84" y="172.72" rot="R90"/>
<instance part="X1" gate="-17" x="119.38" y="144.78" rot="R90"/>
<instance part="X1" gate="-18" x="119.38" y="172.72" rot="R90"/>
<instance part="X1" gate="-19" x="121.92" y="144.78" rot="R90"/>
<instance part="X1" gate="-20" x="121.92" y="172.72" rot="R90"/>
<instance part="X1" gate="-21" x="124.46" y="144.78" rot="R90"/>
<instance part="X1" gate="-22" x="124.46" y="172.72" rot="R90"/>
<instance part="X1" gate="-23" x="127" y="144.78" rot="R90"/>
<instance part="X1" gate="-24" x="127" y="172.72" rot="R90"/>
<instance part="X1" gate="-25" x="129.54" y="144.78" rot="R90"/>
<instance part="X1" gate="-26" x="129.54" y="172.72" rot="R90"/>
<instance part="X1" gate="-27" x="132.08" y="144.78" rot="R90"/>
<instance part="X1" gate="-28" x="132.08" y="172.72" rot="R90"/>
<instance part="X1" gate="-29" x="134.62" y="144.78" rot="R90"/>
<instance part="X1" gate="-30" x="134.62" y="172.72" rot="R90"/>
<instance part="X1" gate="-31" x="137.16" y="144.78" rot="R90"/>
<instance part="X1" gate="-32" x="137.16" y="172.72" rot="R90"/>
<instance part="X1" gate="-33" x="139.7" y="144.78" rot="R90"/>
<instance part="X1" gate="-34" x="139.7" y="172.72" rot="R90"/>
<instance part="X1" gate="-35" x="142.24" y="144.78" rot="R90"/>
<instance part="X1" gate="-36" x="142.24" y="172.72" rot="R90"/>
<instance part="X1" gate="-37" x="144.78" y="144.78" rot="R90"/>
<instance part="X1" gate="-38" x="144.78" y="172.72" rot="R90"/>
<instance part="X1" gate="-39" x="147.32" y="144.78" rot="R90"/>
<instance part="X1" gate="-40" x="147.32" y="172.72" rot="R90"/>
<instance part="X1" gate="-41" x="149.86" y="144.78" rot="R90"/>
<instance part="X1" gate="-42" x="149.86" y="172.72" rot="R90"/>
<instance part="X1" gate="-43" x="152.4" y="144.78" rot="R90"/>
<instance part="X1" gate="-44" x="152.4" y="172.72" rot="R90"/>
<instance part="X1" gate="-45" x="154.94" y="144.78" rot="R90"/>
<instance part="X1" gate="-46" x="154.94" y="172.72" rot="R90"/>
<instance part="X1" gate="-47" x="157.48" y="144.78" rot="R90"/>
<instance part="X1" gate="-48" x="157.48" y="172.72" rot="R90"/>
<instance part="X1" gate="-49" x="160.02" y="144.78" rot="R90"/>
<instance part="X1" gate="-50" x="160.02" y="172.72" rot="R90"/>
<instance part="X2" gate="-1" x="99.06" y="200.66" rot="R90"/>
<instance part="X2" gate="-2" x="99.06" y="231.14" rot="R90"/>
<instance part="X2" gate="-3" x="101.6" y="200.66" rot="R90"/>
<instance part="X2" gate="-4" x="101.6" y="231.14" rot="R90"/>
<instance part="X2" gate="-5" x="104.14" y="200.66" rot="R90"/>
<instance part="X2" gate="-6" x="104.14" y="231.14" rot="R90"/>
<instance part="X2" gate="-7" x="106.68" y="200.66" rot="R90"/>
<instance part="X2" gate="-8" x="106.68" y="231.14" rot="R90"/>
<instance part="X2" gate="-9" x="109.22" y="200.66" rot="R90"/>
<instance part="X2" gate="-10" x="109.22" y="231.14" rot="R90"/>
<instance part="X2" gate="-11" x="111.76" y="200.66" rot="R90"/>
<instance part="X2" gate="-12" x="111.76" y="231.14" rot="R90"/>
<instance part="X2" gate="-13" x="114.3" y="200.66" rot="R90"/>
<instance part="X2" gate="-14" x="114.3" y="231.14" rot="R90"/>
<instance part="X2" gate="-15" x="116.84" y="200.66" rot="R90"/>
<instance part="X2" gate="-16" x="116.84" y="231.14" rot="R90"/>
<instance part="X2" gate="-17" x="119.38" y="200.66" rot="R90"/>
<instance part="X2" gate="-18" x="119.38" y="231.14" rot="R90"/>
<instance part="X2" gate="-19" x="121.92" y="200.66" rot="R90"/>
<instance part="X2" gate="-20" x="121.92" y="231.14" rot="R90"/>
<instance part="X2" gate="-21" x="124.46" y="200.66" rot="R90"/>
<instance part="X2" gate="-22" x="124.46" y="231.14" rot="R90"/>
<instance part="X2" gate="-23" x="127" y="200.66" rot="R90"/>
<instance part="X2" gate="-24" x="127" y="231.14" rot="R90"/>
<instance part="X2" gate="-25" x="129.54" y="200.66" rot="R90"/>
<instance part="X2" gate="-26" x="129.54" y="231.14" rot="R90"/>
<instance part="X2" gate="-27" x="132.08" y="200.66" rot="R90"/>
<instance part="X2" gate="-28" x="132.08" y="231.14" rot="R90"/>
<instance part="X2" gate="-29" x="134.62" y="200.66" rot="R90"/>
<instance part="X2" gate="-30" x="134.62" y="231.14" rot="R90"/>
<instance part="X2" gate="-31" x="137.16" y="200.66" rot="R90"/>
<instance part="X2" gate="-32" x="137.16" y="231.14" rot="R90"/>
<instance part="X2" gate="-33" x="139.7" y="200.66" rot="R90"/>
<instance part="X2" gate="-34" x="139.7" y="231.14" rot="R90"/>
<instance part="X2" gate="-35" x="142.24" y="200.66" rot="R90"/>
<instance part="X2" gate="-36" x="142.24" y="231.14" rot="R90"/>
<instance part="X2" gate="-37" x="144.78" y="200.66" rot="R90"/>
<instance part="X2" gate="-38" x="144.78" y="231.14" rot="R90"/>
<instance part="X2" gate="-39" x="147.32" y="200.66" rot="R90"/>
<instance part="X2" gate="-40" x="147.32" y="231.14" rot="R90"/>
<instance part="X2" gate="-41" x="149.86" y="200.66" rot="R90"/>
<instance part="X2" gate="-42" x="149.86" y="231.14" rot="R90"/>
<instance part="X2" gate="-43" x="152.4" y="200.66" rot="R90"/>
<instance part="X2" gate="-44" x="152.4" y="231.14" rot="R90"/>
<instance part="X2" gate="-45" x="154.94" y="200.66" rot="R90"/>
<instance part="X2" gate="-46" x="154.94" y="231.14" rot="R90"/>
<instance part="X2" gate="-47" x="157.48" y="200.66" rot="R90"/>
<instance part="X2" gate="-48" x="157.48" y="231.14" rot="R90"/>
<instance part="X2" gate="-49" x="160.02" y="200.66" rot="R90"/>
<instance part="X2" gate="-50" x="160.02" y="231.14" rot="R90"/>
<instance part="GND1" gate="1" x="121.92" y="17.78"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="BRAKE_INTENSITY_1" gate="1" pin="A"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="106.68" y1="50.8" x2="106.68" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="BRAKE_INTENSITY_2" gate="1" pin="A"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="116.84" y1="63.5" x2="116.84" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="BRAKE_INTENSITY_3" gate="1" pin="A"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="124.46" y1="76.2" x2="124.46" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="BRAKE_INTENSITY_4" gate="1" pin="A"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="134.62" y1="81.28" x2="134.62" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="BRAKE_INTENSITY_5" gate="1" pin="A"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="147.32" y1="81.28" x2="147.32" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="BRAKE_INTENSITY_6" gate="1" pin="A"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="160.02" y1="81.28" x2="160.02" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="STOP_LIGHT_1" gate="1" pin="A"/>
<wire x1="139.7" y1="43.18" x2="139.7" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="1"/>
<pinref part="STOP_LIGHT_2" gate="1" pin="A"/>
<wire x1="152.4" y1="43.18" x2="152.4" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="STOP_LIGHT_3" gate="1" pin="A"/>
<pinref part="R9" gate="G$1" pin="1"/>
<wire x1="165.1" y1="35.56" x2="165.1" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="BACKWARDS_DRIVING_1" gate="1" pin="A"/>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="71.12" y1="35.56" x2="71.12" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="BACKWARDS_DRIVING_2" gate="1" pin="A"/>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="83.82" y1="35.56" x2="83.82" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="TURN_INDICATOR_5" gate="1" pin="A"/>
<pinref part="R12" gate="G$1" pin="1"/>
<wire x1="132.08" y1="109.22" x2="132.08" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="TURN_INDICATOR_6" gate="1" pin="A"/>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="154.94" y1="109.22" x2="154.94" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="TURN_INDICATOR_4" gate="1" pin="A"/>
<pinref part="R14" gate="G$1" pin="1"/>
<wire x1="111.76" y1="109.22" x2="111.76" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="TURN_INDICATOR_3" gate="1" pin="A"/>
<pinref part="R15" gate="G$1" pin="1"/>
<wire x1="93.98" y1="104.14" x2="93.98" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="TURN_INDICATOR_2" gate="1" pin="A"/>
<pinref part="R16" gate="G$1" pin="1"/>
<wire x1="78.74" y1="91.44" x2="78.74" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="TURN_INDICATOR_1" gate="1" pin="A"/>
<pinref part="R17" gate="G$1" pin="1"/>
<wire x1="66.04" y1="76.2" x2="66.04" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="R19" gate="G$1" pin="1"/>
<pinref part="D1" gate="1" pin="A"/>
<wire x1="48.26" y1="40.64" x2="48.26" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="X1" gate="-17" pin="S"/>
<wire x1="119.38" y1="142.24" x2="119.38" y2="139.7" width="0.1524" layer="91"/>
<wire x1="119.38" y1="139.7" x2="50.8" y2="139.7" width="0.1524" layer="91"/>
<wire x1="50.8" y1="139.7" x2="50.8" y2="93.98" width="0.1524" layer="91"/>
<pinref part="R17" gate="G$1" pin="2"/>
<wire x1="50.8" y1="93.98" x2="66.04" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="R16" gate="G$1" pin="2"/>
<wire x1="78.74" y1="109.22" x2="53.34" y2="109.22" width="0.1524" layer="91"/>
<wire x1="53.34" y1="109.22" x2="53.34" y2="167.64" width="0.1524" layer="91"/>
<pinref part="X1" gate="-20" pin="S"/>
<wire x1="53.34" y1="167.64" x2="121.92" y2="167.64" width="0.1524" layer="91"/>
<wire x1="121.92" y1="167.64" x2="121.92" y2="170.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="R15" gate="G$1" pin="2"/>
<wire x1="93.98" y1="121.92" x2="93.98" y2="137.16" width="0.1524" layer="91"/>
<pinref part="X1" gate="-19" pin="S"/>
<wire x1="93.98" y1="137.16" x2="121.92" y2="137.16" width="0.1524" layer="91"/>
<wire x1="121.92" y1="137.16" x2="121.92" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="R14" gate="G$1" pin="2"/>
<wire x1="111.76" y1="127" x2="55.88" y2="127" width="0.1524" layer="91"/>
<wire x1="55.88" y1="127" x2="55.88" y2="165.1" width="0.1524" layer="91"/>
<pinref part="X1" gate="-22" pin="S"/>
<wire x1="55.88" y1="165.1" x2="124.46" y2="165.1" width="0.1524" layer="91"/>
<wire x1="124.46" y1="165.1" x2="124.46" y2="170.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="R12" gate="G$1" pin="2"/>
<pinref part="X1" gate="-21" pin="S"/>
<wire x1="132.08" y1="127" x2="124.46" y2="127" width="0.1524" layer="91"/>
<wire x1="124.46" y1="127" x2="124.46" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="R13" gate="G$1" pin="2"/>
<wire x1="154.94" y1="127" x2="154.94" y2="134.62" width="0.1524" layer="91"/>
<wire x1="154.94" y1="134.62" x2="58.42" y2="134.62" width="0.1524" layer="91"/>
<wire x1="58.42" y1="134.62" x2="58.42" y2="162.56" width="0.1524" layer="91"/>
<pinref part="X1" gate="-24" pin="S"/>
<wire x1="58.42" y1="162.56" x2="127" y2="162.56" width="0.1524" layer="91"/>
<wire x1="127" y1="162.56" x2="127" y2="170.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="71.12" y1="53.34" x2="71.12" y2="160.02" width="0.1524" layer="91"/>
<pinref part="X1" gate="-36" pin="S"/>
<wire x1="71.12" y1="160.02" x2="142.24" y2="160.02" width="0.1524" layer="91"/>
<wire x1="142.24" y1="160.02" x2="142.24" y2="170.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="R11" gate="G$1" pin="2"/>
<wire x1="83.82" y1="53.34" x2="88.9" y2="53.34" width="0.1524" layer="91"/>
<wire x1="88.9" y1="53.34" x2="88.9" y2="132.08" width="0.1524" layer="91"/>
<pinref part="X1" gate="-35" pin="S"/>
<wire x1="88.9" y1="132.08" x2="142.24" y2="132.08" width="0.1524" layer="91"/>
<wire x1="142.24" y1="132.08" x2="142.24" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="X2" gate="-38" pin="S"/>
<wire x1="144.78" y1="228.6" x2="144.78" y2="226.06" width="0.1524" layer="91"/>
<wire x1="144.78" y1="226.06" x2="48.26" y2="226.06" width="0.1524" layer="91"/>
<wire x1="48.26" y1="226.06" x2="48.26" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="X2" gate="-18" pin="S"/>
<wire x1="119.38" y1="228.6" x2="119.38" y2="223.52" width="0.1524" layer="91"/>
<wire x1="119.38" y1="223.52" x2="162.56" y2="223.52" width="0.1524" layer="91"/>
<wire x1="162.56" y1="223.52" x2="162.56" y2="114.3" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="162.56" y1="114.3" x2="106.68" y2="114.3" width="0.1524" layer="91"/>
<wire x1="106.68" y1="114.3" x2="106.68" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<wire x1="116.84" y1="78.74" x2="116.84" y2="111.76" width="0.1524" layer="91"/>
<pinref part="X2" gate="-22" pin="S"/>
<wire x1="124.46" y1="228.6" x2="124.46" y2="220.98" width="0.1524" layer="91"/>
<wire x1="124.46" y1="220.98" x2="165.1" y2="220.98" width="0.1524" layer="91"/>
<wire x1="165.1" y1="220.98" x2="165.1" y2="111.76" width="0.1524" layer="91"/>
<wire x1="165.1" y1="111.76" x2="116.84" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="124.46" y1="93.98" x2="124.46" y2="109.22" width="0.1524" layer="91"/>
<wire x1="124.46" y1="109.22" x2="167.64" y2="109.22" width="0.1524" layer="91"/>
<wire x1="167.64" y1="109.22" x2="167.64" y2="195.58" width="0.1524" layer="91"/>
<pinref part="X2" gate="-23" pin="S"/>
<wire x1="167.64" y1="195.58" x2="127" y2="195.58" width="0.1524" layer="91"/>
<wire x1="127" y1="195.58" x2="127" y2="198.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="X2" gate="-24" pin="S"/>
<wire x1="127" y1="228.6" x2="127" y2="218.44" width="0.1524" layer="91"/>
<wire x1="127" y1="218.44" x2="170.18" y2="218.44" width="0.1524" layer="91"/>
<wire x1="170.18" y1="218.44" x2="170.18" y2="129.54" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="170.18" y1="129.54" x2="134.62" y2="129.54" width="0.1524" layer="91"/>
<wire x1="134.62" y1="129.54" x2="134.62" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="147.32" y1="99.06" x2="147.32" y2="127" width="0.1524" layer="91"/>
<wire x1="147.32" y1="127" x2="172.72" y2="127" width="0.1524" layer="91"/>
<wire x1="172.72" y1="127" x2="172.72" y2="187.96" width="0.1524" layer="91"/>
<pinref part="X2" gate="-25" pin="S"/>
<wire x1="172.72" y1="187.96" x2="172.72" y2="190.5" width="0.1524" layer="91"/>
<wire x1="129.54" y1="198.12" x2="129.54" y2="193.04" width="0.1524" layer="91"/>
<wire x1="129.54" y1="193.04" x2="172.72" y2="193.04" width="0.1524" layer="91"/>
<wire x1="172.72" y1="193.04" x2="172.72" y2="190.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="X2" gate="-26" pin="S"/>
<wire x1="175.26" y1="226.06" x2="129.54" y2="226.06" width="0.1524" layer="91"/>
<wire x1="129.54" y1="226.06" x2="129.54" y2="228.6" width="0.1524" layer="91"/>
<wire x1="175.26" y1="226.06" x2="175.26" y2="124.46" width="0.1524" layer="91"/>
<wire x1="175.26" y1="124.46" x2="160.02" y2="124.46" width="0.1524" layer="91"/>
<wire x1="160.02" y1="124.46" x2="160.02" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="X2" gate="-21" pin="S"/>
<wire x1="124.46" y1="198.12" x2="124.46" y2="193.04" width="0.1524" layer="91"/>
<wire x1="124.46" y1="193.04" x2="177.8" y2="193.04" width="0.1524" layer="91"/>
<wire x1="177.8" y1="193.04" x2="177.8" y2="60.96" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="177.8" y1="60.96" x2="139.7" y2="60.96" width="0.1524" layer="91"/>
<wire x1="139.7" y1="60.96" x2="139.7" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="152.4" y1="53.34" x2="152.4" y2="58.42" width="0.1524" layer="91"/>
<wire x1="152.4" y1="58.42" x2="180.34" y2="58.42" width="0.1524" layer="91"/>
<wire x1="180.34" y1="58.42" x2="180.34" y2="223.52" width="0.1524" layer="91"/>
<pinref part="X2" gate="-20" pin="S"/>
<wire x1="180.34" y1="223.52" x2="121.92" y2="223.52" width="0.1524" layer="91"/>
<wire x1="121.92" y1="223.52" x2="121.92" y2="228.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="X2" gate="-19" pin="S"/>
<wire x1="121.92" y1="198.12" x2="121.92" y2="190.5" width="0.1524" layer="91"/>
<wire x1="121.92" y1="190.5" x2="182.88" y2="190.5" width="0.1524" layer="91"/>
<wire x1="182.88" y1="190.5" x2="182.88" y2="55.88" width="0.1524" layer="91"/>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="182.88" y1="55.88" x2="165.1" y2="55.88" width="0.1524" layer="91"/>
<wire x1="165.1" y1="55.88" x2="165.1" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="R18" gate="G$1" pin="S"/>
<wire x1="175.26" y1="106.68" x2="177.8" y2="106.68" width="0.1524" layer="91"/>
<wire x1="177.8" y1="106.68" x2="177.8" y2="220.98" width="0.1524" layer="91"/>
<pinref part="X2" gate="-44" pin="S"/>
<wire x1="177.8" y1="220.98" x2="152.4" y2="220.98" width="0.1524" layer="91"/>
<wire x1="152.4" y1="220.98" x2="152.4" y2="228.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="R18" gate="G$1" pin="E"/>
<wire x1="170.18" y1="111.76" x2="167.64" y2="111.76" width="0.1524" layer="91"/>
<wire x1="167.64" y1="111.76" x2="167.64" y2="215.9" width="0.1524" layer="91"/>
<pinref part="X2" gate="-48" pin="S"/>
<wire x1="167.64" y1="215.9" x2="157.48" y2="215.9" width="0.1524" layer="91"/>
<wire x1="157.48" y1="215.9" x2="157.48" y2="228.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<wire x1="139.7" y1="20.32" x2="134.62" y2="20.32" width="0.1524" layer="91"/>
<wire x1="134.62" y1="20.32" x2="132.08" y2="20.32" width="0.1524" layer="91"/>
<wire x1="132.08" y1="20.32" x2="124.46" y2="20.32" width="0.1524" layer="91"/>
<wire x1="124.46" y1="20.32" x2="116.84" y2="20.32" width="0.1524" layer="91"/>
<wire x1="116.84" y1="20.32" x2="111.76" y2="20.32" width="0.1524" layer="91"/>
<wire x1="111.76" y1="20.32" x2="106.68" y2="20.32" width="0.1524" layer="91"/>
<wire x1="106.68" y1="20.32" x2="106.68" y2="45.72" width="0.1524" layer="91"/>
<pinref part="BRAKE_INTENSITY_1" gate="1" pin="C"/>
<pinref part="BRAKE_INTENSITY_2" gate="1" pin="C"/>
<wire x1="116.84" y1="58.42" x2="116.84" y2="20.32" width="0.1524" layer="91"/>
<pinref part="STOP_LIGHT_1" gate="1" pin="C"/>
<wire x1="139.7" y1="30.48" x2="139.7" y2="20.32" width="0.1524" layer="91"/>
<pinref part="STOP_LIGHT_2" gate="1" pin="C"/>
<wire x1="152.4" y1="30.48" x2="152.4" y2="20.32" width="0.1524" layer="91"/>
<wire x1="152.4" y1="20.32" x2="147.32" y2="20.32" width="0.1524" layer="91"/>
<pinref part="STOP_LIGHT_3" gate="1" pin="C"/>
<wire x1="134.62" y1="20.32" x2="147.32" y2="20.32" width="0.1524" layer="91"/>
<wire x1="152.4" y1="20.32" x2="154.94" y2="20.32" width="0.1524" layer="91"/>
<wire x1="154.94" y1="20.32" x2="160.02" y2="20.32" width="0.1524" layer="91"/>
<wire x1="160.02" y1="20.32" x2="165.1" y2="20.32" width="0.1524" layer="91"/>
<wire x1="165.1" y1="20.32" x2="165.1" y2="30.48" width="0.1524" layer="91"/>
<pinref part="BRAKE_INTENSITY_3" gate="1" pin="C"/>
<wire x1="124.46" y1="71.12" x2="124.46" y2="20.32" width="0.1524" layer="91"/>
<pinref part="BRAKE_INTENSITY_4" gate="1" pin="C"/>
<wire x1="134.62" y1="76.2" x2="134.62" y2="20.32" width="0.1524" layer="91"/>
<pinref part="BRAKE_INTENSITY_5" gate="1" pin="C"/>
<wire x1="147.32" y1="76.2" x2="147.32" y2="20.32" width="0.1524" layer="91"/>
<pinref part="BRAKE_INTENSITY_6" gate="1" pin="C"/>
<wire x1="160.02" y1="76.2" x2="160.02" y2="20.32" width="0.1524" layer="91"/>
<pinref part="BACKWARDS_DRIVING_2" gate="1" pin="C"/>
<wire x1="106.68" y1="20.32" x2="93.98" y2="20.32" width="0.1524" layer="91"/>
<wire x1="93.98" y1="20.32" x2="83.82" y2="20.32" width="0.1524" layer="91"/>
<wire x1="83.82" y1="20.32" x2="83.82" y2="30.48" width="0.1524" layer="91"/>
<pinref part="BACKWARDS_DRIVING_1" gate="1" pin="C"/>
<wire x1="71.12" y1="30.48" x2="71.12" y2="20.32" width="0.1524" layer="91"/>
<pinref part="TURN_INDICATOR_6" gate="1" pin="C"/>
<wire x1="71.12" y1="20.32" x2="78.74" y2="20.32" width="0.1524" layer="91"/>
<wire x1="78.74" y1="20.32" x2="83.82" y2="20.32" width="0.1524" layer="91"/>
<wire x1="154.94" y1="104.14" x2="154.94" y2="20.32" width="0.1524" layer="91"/>
<pinref part="TURN_INDICATOR_5" gate="1" pin="C"/>
<wire x1="132.08" y1="104.14" x2="132.08" y2="20.32" width="0.1524" layer="91"/>
<wire x1="111.76" y1="104.14" x2="111.76" y2="20.32" width="0.1524" layer="91"/>
<pinref part="TURN_INDICATOR_3" gate="1" pin="C"/>
<wire x1="93.98" y1="99.06" x2="93.98" y2="20.32" width="0.1524" layer="91"/>
<pinref part="TURN_INDICATOR_2" gate="1" pin="C"/>
<wire x1="78.74" y1="86.36" x2="78.74" y2="20.32" width="0.1524" layer="91"/>
<pinref part="TURN_INDICATOR_1" gate="1" pin="C"/>
<wire x1="66.04" y1="71.12" x2="66.04" y2="20.32" width="0.1524" layer="91"/>
<wire x1="66.04" y1="20.32" x2="71.12" y2="20.32" width="0.1524" layer="91"/>
<wire x1="165.1" y1="20.32" x2="170.18" y2="20.32" width="0.1524" layer="91"/>
<wire x1="170.18" y1="20.32" x2="170.18" y2="101.6" width="0.1524" layer="91"/>
<pinref part="R18" gate="G$1" pin="A"/>
<pinref part="D1" gate="1" pin="C"/>
<wire x1="48.26" y1="30.48" x2="48.26" y2="20.32" width="0.1524" layer="91"/>
<wire x1="48.26" y1="20.32" x2="66.04" y2="20.32" width="0.1524" layer="91"/>
<pinref part="TURN_INDICATOR_4" gate="1" pin="C"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, Eagle supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
</compatibility>
</eagle>
