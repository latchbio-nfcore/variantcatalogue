process MT_Step1_input_tsv {
	label 'process_medium'
        
	input :
        tuple val(meta), path(Sample_MT_Step1_input_tsv)

        output :
        tuple val(meta), path('*.tsv')

        script:
	"""
	cat $Sample_MT_Step1_input_tsv > MT_Step1_input_tsv.tsv
	"""
}

