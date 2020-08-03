---
title: "Cloning with NEBuilder"
author: "Yi-Che Chang"
---

# Cloning with NEBuilder 


## Summary
This protocol describes how to use NEBuilder for cloning where the backbone is prepared by restriction enzyme digestion and the insert(s) are prepared by either digestion or PCR.

---

## Materials
### Reagents


---


## Procedures

### Day 1

#### Backbone preparation
1. Digest 4-5 μg of plasmid with chosen restriction enzyme(s).
    - Do 50 μL or 100 μL reaction in a PCR tube.
    - Incubate at 37 degC (or temperature suggested by the manufacturer) for at least one and up to four hours.
    - Can freeze the product and pause here.
2. Run on 1% agarose gel (see [[20200728221725]] for detail) to isolate the fragment of desired size if possible.
  
    - Otherwise, if the fragment to be cut out is fairly short (<50 bp?) or if there's only a single cutting site, can just perform a PCR cleanup to purify the products. Proceed to step **4**.
3. Purify DNA using Qiagen MinElute Gel Extraction Kit or MN NucleoSpin Gel and PCR Clean-up Kit.
  
    - Be sure to elute DNA with 10-15 μL of water instead of 30 μL or larger volume suggested due to the expected low yield.
4. Estimate the concentration with Nanodrop.
    - The yield is usually fairly poor, commonly in between 10-50 ng/μL.
    - Also the measurement is usually not reliable if DNA is extracted from the gel.
    
    

#### Insert(s) preparation
1. PCR out the insert with primers that allow homology overlapping with the ends of other fragments used in the final DNA assembly reaction.
    - Use Q5 Hot Start 2X Master Mix (or any other polymerases of choice).
    - Parameters for some enzymes:


| polymerase  | denature temp. (degC) | initial denature time (s) | denature time (s) | annealing time (s) | extension temp. (degC) | extension rate (s/kb) | final extension time (m) | primer conc. (nM) |
|:-----------:|:---------------------:|:-------------------------:|:-----------------:|:------------------:|:----------------------:|:---------------------:|:------------------------:|:-----------------:|
| Q5 HS 2X MM | 98                    | 30                        | 10                | 20                 | 72                     | 25                    | 2                        | 500               |
| Phusion     | 98                    | 30                        | 10                | 15                 | 72                     | 20                    | 10                       | 500               |

- Use [PCR table](https://docs.google.com/spreadsheets/d/1Z0tTnK_r0xnXMjnLNWMSjo8pxUXNh8B8lLa8x3JgxPM/edit?usp=sharing) to determine and log PCR conditions.

2. Run on 1% agarose gel (See [Run DNA gel](protocol-003.md) for detail) to verify the product size
  
    - Can also just run a small fraction (instead of all) of the product to check the size, and then PCR-purify the remaining (step **4**), and hence bypass gel-extraction to minimize loss of recovery. But a successful PCR should give more than enough product anyway.
3. Cut the band of correct apparent M.W.
4. Purify the DNA using Qiagen Gel Extraction Kit. _OR_ Perform PCR clean-up if didn't run a gel.
      - Elute with 15-30 μL of water.
      - No need to use MinElute as PCR product should be abundant.
5. Estimate concentration with Nanodrop.
      
      - The measurement is usually not reliable if DNA is extracted from the gel.
      
      

#### DNA assembly
1. Design each reaction with total volume of 8 μL. ⇒ 4 μL DNA with 4 μL enzyme mix (2X)
    - Use [DNA assembly table](https://docs.google.com/spreadsheets/d/10S_Dq_-SBXHTpujz3SK8XRsMYCPX10S7KBpKczKHJd4/edit?usp=sharing) to determine the amount of DNA used for backbone and for inserts.
    - Can include negative control where insert DNA is replaced with water
2. Run at 50 degC for 15-30 minutes in a thermocycler.
3. Freeze at -20 or proceed with transformation



#### Transformation
1. Transform 5 μL of assembled product from _**DNA assembly**_ into 50 μL NEBStable competent cell.
    - Can include negative control with digested backbone
2. Plate 1/5 of the transformed solution. Save the rest in 4 degC fridge in case we need to plate more.




### Day 2

#### Colony PCR
See [Colony PCR](protocol-002.md) for detail.

#### 



### Day 3

#### DNA isolation (mini-prep)





#### Analytical digestion





#### Sanger sequencing





---

## Reference and related files

---

## Changelog

2020-07-29 Initial draft