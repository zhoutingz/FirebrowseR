#' Translate TCGA platform codes to full platform names.
#' 
#' By default this function returns a table of all of the technology platforms used to sequence or characterize samples in TCGA--both their short platform codes and full names.  A subset of this table may be obtained by explicitly specifying one or more platform codes.
#'
#' @param format Format of result. Default value is json. While json,tsv,csv are available. 
#' @param platform Narrow search to one or more TCGA data generation platforms from the scrollable list. Multiple values are allowed 454,ABI,AgilentG4502A_07,AgilentG4502A_07_1,AgilentG4502A_07_2,AgilentG4502A_07_3,bio,biotab,CGH-1x1M_G4447A,diagnostic_images,fh_analyses,fh_reports,fh_stddata,Genome_Wide_SNP_6,GenomeWideSNP_5,H-miRNA_8x15K,H-miRNA_8x15Kv2,H-miRNA_EarlyAccess,H-miRNA_G4470A,HG-CGH-244A,HG-CGH-415K_G4124A,HG-U133_Plus_2,HG-U133A_2,HT_HG-U133A,HuEx-1_0-st-v2,Human1MDuo,HumanHap550,HumanMethylation27,HumanMethylation450,IlluminaDNAMethylation_OMA002_CPI,IlluminaDNAMethylation_OMA003_CPI,IlluminaGA_DNASeq,IlluminaGA_DNASeq_automated,IlluminaGA_DNASeq_Cont,IlluminaGA_DNASeq_Cont_automated,IlluminaGA_DNASeq_Cont_curated,IlluminaGA_DNASeq_curated,IlluminaGA_miRNASeq,IlluminaGA_mRNA_DGE,IlluminaGA_RNASeq,IlluminaGA_RNASeqV2,IlluminaGG,IlluminaHiSeq_DNASeq,IlluminaHiSeq_DNASeq_automated,IlluminaHiSeq_DNASeq_Cont,IlluminaHiSeq_DNASeq_Cont_automated,IlluminaHiSeq_DNASeq_Cont_curated,IlluminaHiSeq_DNASeq_curated,IlluminaHiSeq_DNASeqC,IlluminaHiSeq_miRNASeq,IlluminaHiSeq_mRNA_DGE,IlluminaHiSeq_RNASeq,IlluminaHiSeq_RNASeqV2,IlluminaHiSeq_TotalRNASeqV2,IlluminaHiSeq_WGBS,Mapping250K_Nsp,Mapping250K_Sty,MDA_RPPA_Core,microsat_i,minbio,minbiotab,Mixed_DNASeq,Mixed_DNASeq_automated,Mixed_DNASeq_Cont,Mixed_DNASeq_Cont_automated,Mixed_DNASeq_Cont_curated,Mixed_DNASeq_curated,pathology_reports,SOLiD_DNASeq,SOLiD_DNASeq_automated,SOLiD_DNASeq_Cont,SOLiD_DNASeq_Cont_automated,SOLiD_DNASeq_Cont_curated,SOLiD_DNASeq_curated,tissue_images,WHG-1x44K_G4112A,WHG-4x44K_G4112F,WHG-CGH_4x44B.
#' 
#' @export
Metadata.Platforms = function(format = "json",
                             platform = ""
                             ){
                             
  parameters = list(format = format,
                    platform = platform)
  
  validate.Parameters(params = parameters)

  url = build.Query(parameters = parameters,
                    invoker = "Metadata",
                    method = "Platforms")
  ret = download.Data(url, format)

  return(ret)

}
