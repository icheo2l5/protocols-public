---
title: "Lentivirus Production"
author: "Yi-Che Chang"
abstract: |
  Generate and harvest lentivirus using the second-generation system.
---

# Lentivirus Production

## Summary
This protocol shows how to generate and harvest lentivirus using the second-generation system. Briefly, use FuGene HD to transfect 293T cells with two helper plasmids and one transfer plasmid containing gene-of-interest. Other methods of choice for transfection are also applicable.



## Materials
### Reagents
- HEK293T cells (or Lenti-X 293 from Takara)
- OptiMEM
- DNA plasmids, including
  - pCMV-dR8.91 (encoding for GAG, POL, TAT, REV)
  - pMD2.G (encoding for the envelope protein VSV-G)
  - transfer plasmid (e.g., pHR vector-based plasmid)
- FuGene HD or other transfection reagent of choice
- 3-/5-/10-mL syringe *(5-mL suggested)*
- 0.45 $\mu$m filter (25 mm diameter, polyethersulfone membrane) or other low-protein binding membrane
- 5-mL eppendorf *(suggested)*
- 2% Vesphene (See step. **6**)



## Procedures
### Day 0
1. Seed HEK293T cells in a 6-well plate (one virus per well). Aim for at least 70% confluency when doing transfection on Day 1. Total volume should be somewhere between 2 to 3 mL.

### Day 1
2. _(Optional)_ Replace the medium with fixed volume of new medium. Need to be very gentle to not disturb 293T cells. And if doing so, allow a few hours before transfecting the cells.
  - I usually do not do this step, unless the cells have been plated for two days.
3. Prepare transfection solution. Into 150 $\mu$L OptiMEM, add and mix 3 $\mu$g DNA including pCMV-dR8.91, pMD2.G, and transfer plasmid (mass ratio 8:1:9). Add 9 $\mu$L of FuGene HD reagent and mix gently. Incubate this solution at RT for 10-15 minutes.
    - Can use this [lentivirus table](https://docs.google.com/spreadsheets/d/1Gvl_XRcqCmvqblK3W8tqCFc7f1aRGl4E6OGUpKPE0jc/edit?usp=sharing) to calculate the recipe. Or use this [excel file](asset/lenti%20transfection%20template.xlsx) with more detail explained.
4. Into each well, add the above transfection solution in a dropwise fashion. Gently rock the plate to mix. Incubate in 37 degC for 48-60 hours.

### Day 2
5. _(Optional)_ Seed target cells in tissue culturing plates of choice for transduction on Day 3. Aim for rather low density (15-20%) at the day of infection.
	- Alternatively, as I normally do now, perform *reverse transduction*. Briefly, split and plate cells to infect, then add virus solution (step. **8**) into the cells directly.

### Day 3
6. Before start harvesting virus, bring syringes, filters, and 5-mL eppendorfs into BSC. Also prepare and bring 2% Vesphene solution in
    - a small plastic beaker or a 50-mL falcon tube (about 3 mL/well-of-virus, to decontaminate the 6-well plate after harvesting viruses); and 
    - a 2-L bottle with 1 L of 2% Vesphene pre-filled.
7. Use a 5-mL syringe to take out supernatant. Filter through 0.45 $\mu$m filter, and collect filtrate in a 5-mL eppendorf (or other containers of appropriate volume).
> **Careful! Live viruses are in the supernatant. Work carefully without touching regions/parts that have come into contact with media/cells. All solid waste that has come into contact with media/cells needs to be decontaminated. For plates and tubes, fill with 2% Vesphene solution after use, incubate, and then aspirate. For tips, syringes, and filters, rinse (if possible) and then dispose of into the bottle containing 2% Vesphene.** 

See below for detail:
- Open the lid of the bottle with 2% Vesphene before manipulating virus.
- Remove the wrapping paper of the filter, and leave the filter in the plastic package without touching it.
- Use syringe to take out the supernatant containing virus without disturbing the cells. Pull up some air at the end to prevent dripping.
> _293T cells are easy to detach especially when making viruses. And the more cells getting into the syringe, the more likely the filter will be clogged later when we do filtration._ 

>_Pull up some air at the end to prevent dripping._
- Carefully assemble the syringe onto the filter.
> Do not let any part of the syringe touch the plastic wrapping.
- Open the lid of a 5-mL eppendorf, place the syringe&filter on the tube, and then slowly push the plunger.
> Do not try to empty all the liquid because it might generate foam. Again, pull up some air at the end before moving the syringe/filter from the tube to the waste bottle.
- Dispose of used syringe/filter into the waste bottle containing 2% Vesphene.
- Transfer 2% Vesphene from a small beaker or a 50-mL falcon tube into 6-well plate to decontaminate. Aspirate into liquid waste flask after 10-minute incubation in BSC.

8. Virus supernatant can be used directly, be stored in 4 degC for a few days, or be aliquoted into single-use-volume and stored in -80 degC freezer for future use.



## References and related files
- [Addgene Lentiviral Guide](https://www.addgene.org/viral-vectors/lentivirus/lenti-guide/#production)
- [Trono lab](https://tronolab.epfl.ch/page-148635-en.html) Protocol:[LV Production](https://jahia-prod.epfl.ch/files/content/sites/cpg/files/documents/Documents%20TCF/LV_production.pdf)
- Transfection ratios were obtained from J.E. Toettcher Lab and had been modified by JSP from John James's protocol based on Trono Lab and other protocols. See [this file](asset/lenti%20transfection%20template.xlsx) (`asset/lenti transfection tempalte.xlsx`) for the excel spreadsheet.