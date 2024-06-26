# ldiag
A quick and easy way to make diagnostic reports for linux systems.

## Installation
1. Download the script from the repository using curl
```bash
curl -O https://raw.githubusercontent.com/0x4248/Ldiag/main/diagnostic.sh
```
2. Make the script executable
```bash
chmod +x diagnostic.sh
```
3. Run the script
```bash
sudo ./diagnostic.sh
```
4. Follow the prompts
5. The script will create a file called diagnostic.txt in the same directory as the script. This file contains all the information you need to diagnose your system.

## Installation (Alternative)
1. Download the binary from the repository using curl
```bash
curl -O https://raw.githubusercontent.com/0x4248/Ldiag/main/build/diagnostic
```
2. Make the binary executable
```bash
chmod +x diagnostic
```
3. Run the binary
```bash
sudo ./diagnostic
```
4. Follow the prompts
5. The binary will create a file called diagnostic.txt in the same directory as the binary. This file contains all the information you need to diagnose your system.

## Usage
```bash
sudo ./diagnostic.sh
```
## Contributing
Pull requests are welcome for any changes you would like to make.

## Licence
This project is licenced under the GNU General Public Licence v3.0 please see the [LICENCE](LICENCE) file for more information.