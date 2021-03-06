#!/bin/bash
#SBATCH --job-name=purge_haplotigs
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 8
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mem=50G
#SBATCH --mail-user=jacqueline.guillemin@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load purge_haplotigs/1.0

purge_haplotigs readhist -b /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/physcomitrellopsis_africana_genome.reads.sorted.bam -g /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/assembly.fasta
