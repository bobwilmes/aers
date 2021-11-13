# aers

![ARRL logo](https://www.arrl.org/images/view/News/ARRL_Diamond_2021_Black_RGB.jpg)
![AERS logo](https://www.arrl.org/images/view/News/ares-cl-lrg_3.jpg)\
**The ARRL Amateur Radio Emergency Service&reg; Mobile App**

# Background
The aers mobile application was written in [DART](https://dart.dev/) using the 
[flutter](https://flutter.dev/) framework to enable data collection and transmission during natural disasters 
and emergencies to support emergency communications using [Ham Radio](http://www.arrl.org/what-is-ham-radio).

The vision is a mobile device such as an iPhone or Android smart phone or
tablet with a browser can collect information in forms at a field location
including GPS address and potentially photos and transmit the data using
HF radios with digital data. The FCC allows digital communications for
emergency services using low data rate of 300 baud, but occasionally allows
for higher data rates, such as that granted for [Hurricane Ida](https://www.arrl.org/news/fcc-grants-temporary-waiver-to-permit-higher-symbol-rate-data-transmissions-for-hurricane-ida-traffi).

Emergency communications are typically used in areas without power or commercial telecommunications
infrastructure. Items communicated can be lists of supplies needed or delivered, transportation
blockages such as bridges out or highways destroyed or blocked. Typicaly personally identifiable
information (PII) is not exchanged as the data in unencrypted and is sent on a broadcast channel.

The [American Radio Relay League (ARRL)](http://arrl.org/) publishes extensive guidelines for emergency
net control and message handling called the [National Traffic System (NTS)](http://www.arrl.org/nts)&trade;
# Installation
1. Install [Flutter](https://flutter.dev/docs/get-started/install) for your development environment. Supported environments include Windows, macos, Linux and Chrome OS.
2. Run the command line "flutter doctor" to verify that the install is correct.
3. Install [Git](https://github.com/git-guides/install-git) your development environment. Supported environments include Windows, macos, Linux (if not already installed)
4. Run the command "git --version" to make sure it is running correctly
5. Clone the git repository by entering the command "git --clone https://github.com/bobwilmes/aers.git"


## Getting Started

# Legal
  
All trademarks, service marks and company names are the property of their respective owners.
  
# License
MIT License
  
Copyright &copy; Bob Wilmes and others 2021

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
