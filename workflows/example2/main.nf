include { Quadraplicate } from '../../modules/example2'
include { Quantiplicate } from '../../modules/example2'

workflow MULTIPLICATE45 {
    take:
        filelist
    main:
        // Read the file list from the input
        files = Channel.fromPath(filelist)
                       .splitText()

        
        quadraplicate_files = Quadraplicate(files)

        // // Triplicate files
        quantiplicate_files = Quantiplicate(files)

}