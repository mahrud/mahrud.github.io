---
layout: default
title: Printing in Vincent
---

<p>Laptops connected directly to our wired network in Vincent Hall can print directly to our print server,
  but users with UMN Internet IDs can use authenticated printers on UMN wireless or Vincent Hall notebook
  networks. When on UMN wireless, users will need to connect to the
  <a href="https://it.umn.edu/virtual-private-network-vpn" target="_blank" rel="nofollow">UMN VPN General Access Pool</a>.</p>

<p>We maintain a <a href="https://cseit.umn.edu/how-to/find-printer" rel="nofollow">list of printer names</a> for your reference.</p>

<h2>Printing to CSE Labs Printers</h2>

<h3>Linux/UNIX</h3>
<ol>
  <ol>
    <li>Open the System Settings and select Printers.</li>
    <li>In the window titled "Printers - localhost", click the "+ Add" button in the top left to add a new printer.</li>
    <li>Click on "Network Printer" to expand the drop-down menu.</li>
    <li>Select Windows Printer via SAMBA.
      In the right hand side, enter "cse-print.ad.umn.edu/[printer-name]" next to the "smb://" field,
      for example "cse-print.ad.umn.edu/math-vinp502".</li>
    <li>Under the "Authentication" heading, make sure "Set authentication details now" is selected.</li>
    <li>Enter "ad.umn.edu\[your-UMN-username]" for the username field, with [your-UMN-username] being your UMN internet ID.</li>
    <li>Enter your University of Minnesota password for the password field. </li>
    <li>Click the Forward button in the bottom right.</li>
    <li>Select Select printer from database, and then select Generic under Makes. Click the Forward button in the bottom right.</li>
    <li>Under Models, select PostScript, and under Drivers, select Generic PostScript Printer.
      Click the Forward button in the bottom right.</li>
    <li>Make sure the Duplexer option is selected, and click the Forward button in the bottom right.</li>
    <li>Enter a name, description, and location of the printer, then click Apply.</li>
    <li>Click Cancel if you're asked to print a test page.</li>
    <li>The printer should now be added to your list of printers.</li>
  </ol>
</ol>

<h3>Mac OS X </h3>
<ol>
  <ol>
    <li>Open "Printers &amp; Scanners" from the System Preferences.</li>
    <li>Add a printer by clicking on the "+". </li>
    <li>If you do not have an "Advanced" Tab, Ctrl-click on the toolbar and scroll down to "Customize Toolbar".
      From there, you can drag the "Advanced" tab to your toolbar. </li>
    <li>Click on the "Advanced" Tab. </li>
    <li>Choose Type: "Windows printer via spoolss".</li>
    <li>Choose Device: "Another Device"</li>
    <li>Use the URL: smb://cse-print.ad.umn.edu/&lt;printer name&gt;
      (For example: smb://cse-print.ad.umn.edu/csel-me308a)</li>
    <li>Name the printer whatever you like, I recommend something like "csel-me308a on cse-print."</li>
    <li>Edit location if you like.</li>
    <li>Choose a driver:
      you may need to download the driver for the printer or you may attempt to use "Generic PostScript Printer".</li>
    <li>Now, when you print to this printer, you will be prompted for your University username and password.
      Print as a Registered User with the username "ad\username" and your password.</li>
  </ol>
</ol>

<h3>Windows 7 and 10</h3>
<ol>
  <ol>
    <li>Open a File Explorer window.</li>
    <li>In the address bar, type \\cse-print.ad.umn.edu\ and press enter.</li>
    <li>Authenticate with the credentials ad\[internet ID] and your UMN password, with [internet ID] being your UMN internet ID.</li>
    <li>Find the printer you want to add, right click on it, and select Connect.</li>
    <li>If you're prompted to install a driver, allow Windows to install it.</li>
    <li>The printer should now be available in your list of printers in Devices &amp; Printers.</li>
  </ol>
</ol>
<p>The printer should now be added.</p>
