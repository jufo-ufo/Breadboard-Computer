# Breadboard-Computer
Let's build a computer from ICs!

## TODO
- [X] Test out NAND vs NOT, AND, OR
- [X] Write specification for V0.4
  - [X] Add Instructionset to "Handbuch"
  - [X] Rework Interrupts
  - [X] I/O specification
  - [X] Update Flags
  - [ ] ~~Insert test results~~
- [ ] Get familiar with ~~EAGLE/Target3001~~ Kicad/Logisim
- [ ] Build circuit designs

| Part                  | Logic | Schematic | Layout | Breadboard | Etching | Soldering | Etcher | Documenation | Engineer | Comment
|-----------------------|-------|-----------|--------|------------|---------|-----------|--------|--------------|----------|---------
| Bank                  | [X]   | [X]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | alex     | 
| Bank\_controller      | [X]   | [X]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | alex     | 
| Memory                | [X]   | [X]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | alex     | 
| Register\_File        | [X]   | [X]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | alex     | 
| ALU                   | [X]   | [ ]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | simon    | 
| IV\_Storage           | [X]   | [ ]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | alex     | 
| Interrupt\_Controller | [ ]   | [ ]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | alex     | 
| Timer                 | [X]   | [ ]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | alex     | 
| Freq\_Counter         | [X]   | [ ]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | alex     | 
| Instruction\_Decoder  | [ ]   | [ ]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | alex     | 
| IO\_Controller        | [ ]   | [ ]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | simon    | 
| Activation\_Module    | [X]   | [X]       | [ ]    | [X]        | [ ] x7  | [ ] x7    |        | [ ]          | alex     | 
| Dual\_Register        | [X]   | [X]       | [X]    | [X]        | [ ] x2  | [ ] x2    |        | [ ]          | alex     | Replacement for BID-Regiser and IR
https://www.youtube.com/watch?v=9aUsTlBjspE

## TODO for Presentation
| Module               | Logic | Schematic | Layout | Breaboard | DIY Etching | Soldering | Comment
|----------------------|-------|-----------|--------|-----------|-------------|-----------|--------
| Activation Module x4 | [X]   | [X]       | [ ]    |           |             | [ ]       |
| Register File        | [X]   | [X]       | [ ]    |           |             | [ ]       |
| ALU                  | [X]   | [ ]       |        | [ ]       |             |           |
| Dual Register        | [X]   | [X]       | [ ]    |           | [ ]         | [ ]       |
| Memory               | [X]   | [X]       | [ ]    |           |             | [ ]       |
| Interrupt Controller | [ ]   | [ ]       |        | [ ]       |             |           |
| Instruction Decoader | [ ]   | [ ]       |        | [ ]       |             |           |
| IO-Controller        | [ ]   | [ ]       |        | [ ]       |             |           |

| Day | Date | Allgmein | Alexander                                    | Simon                                             |
|-----|------|----------|----------------------------------------------|---------------------------------------------------|
| Mi  | 26.1 |  | Prüfen ist BUS1 nötig |
| Do  | 27.1 |  | PCB Dual anpassen |
| Fr  | 28.1 | Ätzen | Logic Interrupt Controller | Löten von Dual Register |
| Sa  | 29.1 |  | Logic Instruction Decoder | Logic IO-Controller |
| So  | 30.1 |  | Logic ganzer Computer |  |
| Mo  | 31.1 |  | Logic ganzer Computer | Löten von Dual Register |
| Di  | 01.2 |  | Logic ganzer Computer | Schematic ALU |
| Mi  | 02.2 |  | Schematic Inerrupt Controller | Schemtaic IO-Controller |
| Do  | 03.2 |  | Schematic Instruction Decoader | |
| Fr  | 04.2 | (Ätzen) | PCB AM | PCB Register File |
| Sa  | 05.2 | Bestellung AM | PCB AM | PCB Register File |
| So  | 06.2 |  |  | PCB Register File |
| Mo  | 07.2 |  | PCB Memory | Breadboard ALU | |
| Di  | 08.2 | PCB Bestellen | PCB Memory | Breadboard ALU |
| Mi  | 09.2 |  | Breadboard Interrupt Controller | Breadboard IO-Controller |
| Do  | 10.2 |  | Breadboard Interrupt Controller | Breadboard IO-Controller |
| Fr  | 11.2 |  | Breadboard Instruction Decoder |
| Sa  | 12.2 |  | Breadboard Instruction Decoder | Präsentation |
| So  | 13.2 | Präsentation | Präsentation | Präsentation |
| Mo  | 14.2 | Präsentation | Präsentation | Präsentation |
| Di  | 15.2 | Präsentation | Präsentation| Präsentation |
| Mi  | 16.2 | PCBs komen Präsentation | | |
| Do  | 17.2 |  | Löten | Löten
| Fr  | 18.2 |  | Löten | Löten
| Sa  | 19.2 | Präsentation | Präsentation | Präsentation |
| So  | 20.2 | Präsentation | Präsentation | Präsentation |
| Mo  | 21.2 | Präsentation | Präsentation | Präsentation |
| Di  | 22.2 | Wettbewerb   | | |
