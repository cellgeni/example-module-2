include { MULTIPLICATE } from './modules/example1/workflows/example1'
include { MULTIPLICATE45 } from './workflows/example2'

workflow  {
    MULTIPLICATE(params.filelist)
    MULTIPLICATE45(params.filelist)
}