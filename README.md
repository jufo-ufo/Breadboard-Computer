# Breadboard-Computer
Let's build a computer from ICs!

## TODO
- [X] Test out NAND vs NOT, AND, OR
- [X] Write specification for V0.4
  - [X] Add Instructionset to "Handbuch"
  - [X] Rework Interrupts
  - [X] I/O specification
  - [X] Update Flags
  - [X] ~~Insert test results~~
- [X] Get familiar with ~~EAGLE/Target3001~~ Kicad/Logisim
- [ ] Build circuit designs

| Part                  | Logic | Schematic | Layout | Breadboard | Etching | Soldering | Etcher | Documenation | Comment
|-----------------------|-------|-----------|--------|------------|---------|-----------|--------|--------------|---------
| Bank                  | [X]   | [X]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | 
| Bank\_controller      | [X]   | [X]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          |
| Memory                | [X]   | [X]       | [X]    | [ ]        | [ ]     | [ ]       |        | [ ]          | 
| Register\_File        | [X]   | [X]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | 
| ALU                   | [X]   | [X]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | 
| IV\_Storage           | [X]   | [ ]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | 
| Interrupt\_Controller | [ ]   | [ ]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | 
| Timer                 | [X]   | [ ]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | 
| Freq\_Counter         | [X]   | [ ]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | 
| Instruction\_Decoder  | [X]   | [ ]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | 
| IO\_Controller        | [ ]   | [ ]       | [ ]    | [ ]        | [ ]     | [ ]       |        | [ ]          | 
| Activation\_Module    | [X]   | [X]       | [X]    | [X]        | [ ] x7  | [ ] x7    |        | [ ]          | 
| Dual\_Register        | [X]   | [X]       | [X]    | [X]        | [ ] x2  | [ ] x2    |        | [ ]          | Replacement for BID-Regiser and IR
https://www.youtube.com/watch?v=9aUsTlBjspE

## TODO for Presentation
| Module               | Logic | Schematic | Layout | Breaboard | DIY Etching | Soldering | Comment
|----------------------|-------|-----------|--------|-----------|-------------|-----------|--------
| Activation Module x4 | [X]   | [X]       | [X]    |           |             | [ ]       |
| Register File        | [X]   | [X]       | [ ]    |           |             | [ ]       |
| ALU                  | [X]   | [ ]       |        | [ ]       |             |           |
| Dual Register        | [X]   | [X]       | [X]    |           | [X]         | [ ]       |
| Memory               | [X]   | [X]       | [X]    |           |             | [ ]       |
| Instruction Decoader | [X]   |           |        | [ ]       |             |           | No Schematic need, due unstable design
| IO-Controller        | [X]   |           |        | [ ]       |             |           | No Schematic need, has to be build spontainiously

## Was macht unseren Computer besonders?

- Modular: Die Funktionialiät des Computer kann erweitern werden indem neues einfach eingesteckt wird
- 2 Bus-Architektur: Efficenter
- IO-System sehr vielfältig: bis zu 2^16 IO-Geräte
- Wäre der Laufzeit anpassbares Instruktions Satz (kommt noch)
- Keine Softwareverwaltes Berechtigungs System: Supervisor/Usermode

=> Sehr einfache Anpassbarkeit und Optimierung auf Verschieden Zenarien



