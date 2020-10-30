---
title: "Cloning with NEBuilder"
author: "Yi-Che Chang"
---

# Cloning with NEBuilder 

## Summary
This protocol describes how to use NEBuilder for cloning where the backbone is prepared by restriction enzyme digestion and the insert(s) are prepared by either digestion or PCR. Similar workflow can be used for Takara InFusion with a different method of counting overlapping due to the endonuclease directionality.

---

## Procedures

### Before experiments
#### Design cloning scheme (i.e., the *harder* part)
1. Design cutting sites.
    - It's preferable to pick enzymes that generate distinct sticky ends. When this is not possible, include additional de-phosphorylation step after digestion.
    - Make sure to check buffer compatibility. Most of them should be at high efficiency in CutSmart.
2. Design and order primers that allow homology overlapping with the ends of other fragments used in the final DNA assembly reaction.
    - Check out the [NEBuilder manual](asset/nebuilder.pdf) for detail design principles.
      - I typically do at least 18-20 bp overlap.
    - Pick restriction enzyme
    - Use [NEB Tm Calculator](https://tmcalculator.neb.com/#!/main) to check the melting and annealing temperatures for polymerase of choice.
    - SnapGene can also automatically pick primers for you, but I don't use it. However, I use SnapGene to verify my own design will work and to catch potential mistakes. Note that instead of using the tool for NEBuilder, I use the one for Gibson assembly as the latter has more strict rules which will detect any unintended mistakes. (In snapgene, use `Actions` > `Gibson Assembly`.)

### Day 1

#### Backbone preparation
1. Digest 4-5 $\mu$g of plasmid with chosen restriction enzyme(s).
    - Do 50 $\mu$L or 100 $\mu$L reaction in a PCR tube.
    - Incubate at 37 degC (or temperature suggested by the manufacturer) for at least one and up to four hours.
    - Can freeze the product and pause here.
2. Run on 1% agarose gel (see [Run DNA gel](protocol-003.md) for detail) to isolate the fragment of desired size if possible.
  
    - Otherwise, if the fragment to be cut out is fairly short (<50 bp?) or if there's only a single cutting site, can just perform a PCR cleanup to purify the products. Proceed to step **4**.
3. Purify DNA using Qiagen MinElute Gel Extraction Kit or MN NucleoSpin Gel and PCR Clean-up Kit.
  
    - Be sure to elute DNA with 10-15 $\mu$L of water instead of 30 $\mu$L or larger volume suggested due to the expected low yield.
4. Estimate the concentration with Nanodrop.
    - The yield is usually fairly poor, commonly in between 10-50 ng/$\mu$L.
    - Also the measurement is usually not reliable if DNA is extracted from the gel.
    
    

#### Insert(s) preparation
1. PCR out the insert with primers that allow homology overlapping with the ends of other fragments used in the final DNA assembly reaction.
    - Use Q5 Hot Start 2X Master Mix (or any other polymerases of choice).
    - Parameters for selected enzymes:

|         polymerase        | Q5 HS 2X MM | Phusion |
|---------------------------|-------------|---------|
| denature temp. (degC)     |          98 |      98 |
| initial denature time (s) |          30 |      30 |
| denature time (s)         |          10 |      10 |
| annealing time (s)        |          20 |      15 |
| extension temp. (degC)    |          72 |      72 |
| extension rate (s/kb)     |          25 |      20 |
| final extension time (m)  |           2 |      10 |
| primer conc. (nM)         |         500 |     500 |

- Use [PCR table](https://docs.google.com/spreadsheets/d/1pGdlURjKuqQapkC8BWhwlaMc0NxCQl-8L66yKT_Yvlo/edit?usp=sharing) to determine and log PCR conditions.

2. Run on 1% agarose gel (See [Run DNA gel](protocol-003.md) for detail) to verify the product size
  
    - Can also just run a small fraction (instead of all) of the product to check the size, and then PCR-purify the remaining (step **4**), and hence bypass gel-extraction to minimize loss of recovery. But a successful PCR should give more than enough product anyway.
3. Cut the band of correct apparent M.W.
4. Purify the DNA using Qiagen Gel Extraction Kit. _OR_ Perform PCR clean-up if didn't run a gel.
      - Elute with 15-30 $\mu$L of water.
      - No need to use MinElute as PCR product should be abundant.
5. Estimate concentration with Nanodrop.
   
      - The measurement is usually not reliable if DNA is extracted from the gel.
      
      

#### DNA assembly
1. Design each reaction with total volume of 8 $\mu$L. $\implies$ 4 $\mu$L DNA with 4 $\mu$L enzyme mix (2X)
    - Use [DNA assembly table](https://docs.google.com/spreadsheets/d/1G4l4WtEMPbiUMfWUJcOEH0ogL4pLeL4he5cG-GszZKU/edit?usp=sharing) to determine the amount of DNA used for backbone and for inserts.
    - Can include negative control where insert DNA is replaced with water
2. Run at 50 degC for 15-30 minutes in a thermocycler.
3. Freeze at -20 or proceed with transformation



#### Transformation
1. Transform 5 $\mu$L of assembled product from _**DNA assembly**_ into 50 $\mu$L NEBStable competent cell.
    - Can include negative control with digested backbone
2. Plate 1/5 of the transformed solution. Save the rest in 4 degC fridge in case we need to plate more.




### Day 2

#### Colony PCR
See [Colony PCR](protocol-002.md) for detail.



### Day 3

#### DNA isolation (mini-prep)
1. Use Qiagen kit (QIAprep Spin Miniprep Kit) following their instruction with the following modifications:
    - Elute with 30-50 $\mu$L nuclease-free water instead of Elution Buffer or TE buffer.

#### Analytical digestion
If colony PCR can't be readily performed, or is less desirable, analytical digestion can be an alternative assay for picking potentially positive clones.

1. Pick two (or three) enzymes that would create distinct digestion patterns for positive clones that can be distinguished from negative clones (usually this means backbone-only, incomplete incorporation of inserts, or simply unrelevant background.)


#### Sanger sequencing
Pick a few plasmids to verify the sequence. I usually do two if my colony PCR or analytical digestion results look good.

1. Create your Sanger sequencing order via Genewiz. Enter the plasmid information and primers to be used for sequencing.
    - Can also use their universal primers, which can be found on their website [here](https://www.genewiz.com/en/Public/Resources/Free-Universal-Primers).
2. Prepare samples in PCR tubes.
    - Provide 0.1 $\mu$g/kb plasmid in a total of 10 $\mu$L volume, as suggested by Genewiz. Although less DNA is also fine, and sometimes gives even better result.
    - Add 5 $\mu$L of 5 $\mu$M primer. Skip this step if using Genewiz's universal primers.





---

## Reference and related files

---

## Changelog

2020-07-29 Initial draft