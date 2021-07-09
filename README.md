# SSC_normalization
**Here is an example of the normalization scheme used by SSC in CGL, CHSL and other exams.** \
The mathematical process was taken from 
the [publicly available document](https://ssc.nic.in/SSCFileServer/PortalManagement/UploadedFiles/NormalizationFormulaforSSC_07022019.pdf) and the **author
of this repository is not responsible for any mistakes in the codes published here**.\
The example was built upon many assumptions as stated in the code. Hope this calculations may help someone who wants to study this with better real life data.
Feel free to contact me here: debsankb@andrew.cmu.edu\

## Example with three shifts ##
Here 3 shifts of exams are taken with ~ 20 thousands candidates in each shift. The actual marks obtained in each shifts are drawn from a normal distribution truncated in [0,200]. The first shift is normal (average marks 120), second shift is harder(average marks 85) and third shift is easier(average marks 160). Standard deviation was taken to be same in all shift (40).\

This is the actual marks and normalized marks:

![alt text](https://github.com/DebsankarBanerjee/SSC_normalization/blob/main/untitled.svg)

This is the respective marks distribution:

![alt text](https://github.com/DebsankarBanerjee/SSC_normalization/blob/main/untitled.svg)
