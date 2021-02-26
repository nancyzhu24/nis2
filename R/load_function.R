#' load nis function
#'
#' A function to load NIS data between 2016 and 2018
#' @param filepath character Path to the input file
#' @param year integer Year of data
#' @param data_type character type of data to load Eg:'hospital','core','severity
#' @return A data frame
#' @export
#' @examples
#' load_nis('C:/data.asc',2016,'hospital')


load_nis <- function(filepath,year,data_type) {


  if(year==2016){
    if(data_type=='hospital'){

      nis_specs<-hospital_specs

    }else if(data_type=='core'){

      nis_specs<-core_specs_2016

    }else if(data_type=='severity'){

      nis_specs<-severity_specs
    }

    nis_specs$width<-nis_specs$end - nis_specs$start + 1
    nis_specs$varname<-tolower(nis_specs$varname)

    nis_specs$type<-ifelse(nis_specs$type =='int','i',
                           ifelse(nis_specs$type %in% c("byte", "double", "long"),'d','c'))
    ds<-read_fwf(filepath,
             col_positions = fwf_widths(nis_specs$width,col_names = nis_specs$varname),
             col_types = paste0(nis_specs$type, collapse = ""),
             trim_ws = TRUE)
  }


  if(year==2017){
    if(data_type=='hospital'){

      nis_specs<-hospital_specs

    }else if(data_type=='core'){

      nis_specs<-core_specs_2017
    }else if(data_type=='severity'){

      nis_specs<-severity_specs
    }

    nis_specs$width<-nis_specs$end - nis_specs$start + 1
    nis_specs$varname<-tolower(nis_specs$varname)

    nis_specs$type<-ifelse(nis_specs$type =='int','i',
                           ifelse(nis_specs$type %in% c("byte", "double", "long"),'d','c'))
    ds<-read_fwf(filepath,
             col_positions = fwf_widths(nis_specs$width,col_names = nis_specs$varname),
             col_types = paste0(nis_specs$type, collapse = ""),
             trim_ws = TRUE)
  }

  if(year==2018){
    if(data_type=='hospital'){

      nis_specs<-hospital_specs

    }else if(data_type=='core'){

      nis_specs<-core_specs_2018
    }else if(data_type=='severity'){

      nis_specs<-severity_specs
    }

    nis_specs$width<-nis_specs$end - nis_specs$start + 1
    nis_specs$varname<-tolower(nis_specs$varname)

    nis_specs$type<-ifelse(nis_specs$type =='int','i',
                           ifelse(nis_specs$type %in% c("byte", "double", "long"),'d','c'))
    ds<-read_fwf(filepath,
             col_positions = fwf_widths(nis_specs$width,col_names = nis_specs$varname),
             col_types = paste0(nis_specs$type, collapse = ""),
             trim_ws = TRUE)

  }

  return(ds)

}
