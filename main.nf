include { MULTIPLICATE } from './example-module-1//workflows/example1'
include { MULTIPLICATE45 } from './workflows/example2'
include { Duplicate; Triplicate } from "./example-module-1//modules/example1"

workflow  {
    MULTIPLICATE45(params.filelist)

    if (params.multiplicate23) {
        MULTIPLICATE(params.filelist)
    }

    if (params.duplicate) {
        files = Channel.fromPath(params.filelist).splitText()
        Duplicate(files)
    }

    if (params.triplicate) {
        files = Channel.fromPath(params.filelist).splitText()
        Triplicate(files)
    }
}