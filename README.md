## aers
## Note: this is an unfinished work in progress as of Nov 2021

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

## Getting Started

Digital forms of ham radio communications are limited between 300 baud and 1200 baud
based on [bandwith restrictions of 2.8KHz in the United States](https://www.arrl.org/news/arrl-renews-request-for-fcc-to-replace-symbol-rate-with-bandwidth-limit).

Manuafacturers of ham radios including [Yaseu Systemfusion](http://systemfusion.yaesu.com/what-is-system-fusion/)
and [Icom DSTAR](https://www.icomamerica.com/en/products/amateur/dstar/dstar/default.aspx) who partners with
[Kenwood](https://www.kenwood.com/usa/com/amateur/th-d74a/) have developed proprietary digital codecs for 
transmitting up to 9600 bits per second. These proprietary technologies only work between radios in the same 
manufacturer or the manufacturer's licensees, and are protected by proprietary patents.

Recently open source projects such as [FreeDV](https://freedv.org/) have developed new codecs which
enable digital codecs that can be used on any open platform. The project is open source on [Github](https://github.com/drowe67/freedv-gui)
An Australian ham radio operator, David Rowe, has released the open source for[Codec2](https://github.com/drowe67/codec2)
which is a low bandwidth open source codec for encoding/decoding digital communications on an audio
bitstream.


## Architecture
![aers Architecture](images/aersarchitecture.jpg)

The aers applications is designed to build communications of an emergency nature for transmission and
reception over HF ham radio. This might possibly include the GPS location of the mobile device,
the call sign of the ham operating the mobile device, items such as lists of emergency supplies needed.
It's expected that locations of transportation blockages such as bridges or roads that are blocked or
damaged might also be needed. Some mobile device capability such as photographs might be sent using
a technique called slow scan television. Some voice audio communications can also be exchanged, although
the bandwidth of voicemail communications would be restricted.


## Installation
1. Install [Flutter](https://flutter.dev/docs/get-started/install) for your development environment. Supported environments include Windows, macos, Linux and Chrome OS.
2. Run the command line "flutter doctor" to verify that the install is correct.
3. Install [Git](https://github.com/git-guides/install-git) your development environment. Supported environments include Windows, macos, Linux (if not already installed)
4. Run the command "git --version" to make sure it is running correctly
5. Clone the git repository by entering the command "git --clone https://github.com/bobwilmes/aers"

## Building on Ubuntu Linux (16-20)
  ```
  $ sudo apt install libspeexdsp-dev libsamplerate0-dev sox git \
  libwxgtk3.0-gtk3-dev portaudio19-dev libhamlib-dev libasound2-dev libao-dev \
  libgsm1-dev libsndfile-dev cmake module-assistant build-essential
  $ git clone https://github.com/bobwilmes/aers.git
  $ cd aers
  $ ./build_linux.sh
  ```
  

  Then run with:
  ```
  $ ./build_linux/src/aers
  ```
  
  Note this builds all libraries locally, nothing is installed on your machine.  ```make install``` is not required.

  
## Academic

This project was created for partial credit in:  
CYBR8470 Secure Web App Development  
Fall Semester 2021  
University of Nebraska at Omaha  

## Legal

All trademarks, service marks and company names are the property of their respective owners.

# License
BSD License
  
Copyright &copy; Bob Wilmes AG0LF and others 2021

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
