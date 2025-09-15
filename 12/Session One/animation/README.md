<h1 align="center">  Animation Demos</h1>

<p align="center">
  This repository demonstrates different types of <b>Flutter animations</b>, 
  including <b>implicit animations</b> and a <b>Hero animation</b>.
  <br>
  Each example is simple but powerful, showing how animations can 
  improve the user experience and make apps feel more interactive.
</p>

---

<h2> Examples</h2>

<h3>1️⃣ AnimatedContainer Demo</h3>
<p>
  The <code>AnimatedContainer</code> widget allows you to animate changes to its properties 
  such as size, color, and shape without needing an <code>AnimationController</code>. 
  Whenever one of its properties changes, Flutter automatically animates the transition.
</p>

<ul>
  <li><b>Size:</b> Switches between <code>100x100</code> and <code>200x200</code>.</li>
  <li><b>Color:</b> Switches between <span style="color:pink">Pink</span> and <span style="color:blue">Blue</span>.</li>
  <li><b>Shape:</b> Switches between rounded corners (<code>borderRadius = 30</code>) and a sharp square (<code>borderRadius = 0</code>).</li>
</ul>

<p>
  Each change happens smoothly over <code>1 second</code>.  
  The floating action button toggles the state (<code>isBig</code>), 
  which triggers the animation.
</p>

---

<h3>2️⃣ AnimatedOpacity Demo</h3>
<p>
  The <code>AnimatedOpacity</code> widget is used to smoothly fade a widget in and out by 
  animating its opacity property.
</p>

<ul>
  <li><b>Visible state:</b> Opacity = <code>1.0</code> (fully visible).</li>
  <li><b>Hidden state:</b> Opacity = <code>0.0</code> (fully transparent).</li>
</ul>

<p>
  The purple box with the text <b>"Hello"</b> will fade in or out over <code>1 second</code> 
  when the floating action button is pressed.
</p>

<p><i>Note:</i> Even when opacity is <code>0.0</code>, the widget still occupies layout space. 
If you want it to be completely removed from the layout, consider using 
<code>Visibility</code> or <code>AnimatedSwitcher</code>.</p>

---

<h3>3️⃣ AnimatedCrossFade Demo</h3>
<p>
  The <code>AnimatedCrossFade</code> widget lets you fade between two children widgets with 
  a resizing effect if their sizes differ.
</p>

<ul>
  <li><b>First child:</b> Blue box labeled <b>"First"</b>.</li>
  <li><b>Second child:</b> Pink box labeled <b>"Second"</b>.</li>
</ul>

<p>
  When the floating action button is pressed, the widget crossfades from one child 
  to the other over <code>1 second</code>.  
  This animation combines both <b>fade transitions</b> and <b>size adjustments</b>.
</p>

<p><i>Tip:</i> You can customize the curves for each child with 
<code>firstCurve</code>, <code>secondCurve</code>, and <code>sizeCurve</code> 
to control how the fade and resize feel.</p>

---

<h3>4️⃣ Hero Animation (Page Transition)</h3>
<p>
  The <code>Hero</code> widget enables a smooth transition of a shared element between 
  two different screens (routes). It creates the illusion that the same widget is 
  "flying" from one page to another.
</p>

<ul>
  <li><b>FirstPage:</b> Small blue box (<code>100x100</code>) labeled <b>"Tap Me"</b>.</li>
  <li><b>SecondPage:</b> Larger blue box (<code>250x250</code>) labeled <b>"I Grew!"</b>.</li>
</ul>

<p>
  When you tap the small box, Flutter uses the <b>Hero tag</b> (<code>'myHero'</code>) 
  to link the two widgets across pages.  
  The framework automatically animates the size and position changes of the widget 
  during the page transition.
</p>

<p><i>Note:</i> Both Hero widgets must share the same <code>tag</code>.  
  You can also customize the animation path with <code>flightShuttleBuilder</code> 
  if you need more control.
</p>

---

<h2>📂 Project Structure</h2>

<pre>
lib/
 ├── animated_box_demo.dart        # Example 1: AnimatedContainer
 ├── animated_opacity_demo.dart    # Example 2: AnimatedOpacity
 ├── cross_fade_demo.dart          # Example 3: AnimatedCrossFade
 ├── first_page.dart               # Hero - FirstPage
 ├── second_page.dart              # Hero - SecondPage
</pre>

---
