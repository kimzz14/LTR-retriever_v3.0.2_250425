bash ./pipe/gt_suffixerator.sh
bash ./pipe/gt_LTRharvest.sh
bash ./pipe/LTR_FINDER_parallel.sh
cat genome.fa.harvest.scn genome.fa.finder.combine.scn > genome.fa.rawLTR.scn

bash ./pipe/LTR_retriever.sh
bash ./pipe/LAI.sh