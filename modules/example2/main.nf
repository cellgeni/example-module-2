process Quadraplicate {
    input:
        path(file)
    output:
        path("quadraplicated_*")
    script:
        """
        quadraplicate.sh ${file} quadraplicated_${file}
        """
}

process Quantiplicate {
    input:
        path(file)
    output:
        path("quantiplicated_*")
    script:
        """
        quantiplicate.sh ${file} quantiplicated_${file}
        """
}