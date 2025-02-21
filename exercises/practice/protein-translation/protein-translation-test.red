Red [
	description: {Tests for Protein Translation Exercism exercise}
	author: "loziniak"
]

exercise-slug: "protein-translation"
ignore-after: 1


canonical-cases: [#(
    description: "Methionine RNA sequence"
    input: #(
        strand: "AUG"
    )
    expected: ["Methionine"]
    function: "proteins"
    uuid: "96d3d44f-34a2-4db4-84cd-fff523e069be"
) #(
    description: "Phenylalanine RNA sequence 1"
    input: #(
        strand: "UUU"
    )
    expected: ["Phenylalanine"]
    function: "proteins"
    uuid: "1b4c56d8-d69f-44eb-be0e-7b17546143d9"
) #(
    description: "Phenylalanine RNA sequence 2"
    input: #(
        strand: "UUC"
    )
    expected: ["Phenylalanine"]
    function: "proteins"
    uuid: "81b53646-bd57-4732-b2cb-6b1880e36d11"
) #(
    description: "Leucine RNA sequence 1"
    input: #(
        strand: "UUA"
    )
    expected: ["Leucine"]
    function: "proteins"
    uuid: "42f69d4f-19d2-4d2c-a8b0-f0ae9ee1b6b4"
) #(
    description: "Leucine RNA sequence 2"
    input: #(
        strand: "UUG"
    )
    expected: ["Leucine"]
    function: "proteins"
    uuid: "ac5edadd-08ed-40a3-b2b9-d82bb50424c4"
) #(
    description: "Serine RNA sequence 1"
    input: #(
        strand: "UCU"
    )
    expected: ["Serine"]
    function: "proteins"
    uuid: "8bc36e22-f984-44c3-9f6b-ee5d4e73f120"
) #(
    description: "Serine RNA sequence 2"
    input: #(
        strand: "UCC"
    )
    expected: ["Serine"]
    function: "proteins"
    uuid: "5c3fa5da-4268-44e5-9f4b-f016ccf90131"
) #(
    description: "Serine RNA sequence 3"
    input: #(
        strand: "UCA"
    )
    expected: ["Serine"]
    function: "proteins"
    uuid: "00579891-b594-42b4-96dc-7ff8bf519606"
) #(
    description: "Serine RNA sequence 4"
    input: #(
        strand: "UCG"
    )
    expected: ["Serine"]
    function: "proteins"
    uuid: "08c61c3b-fa34-4950-8c4a-133945570ef6"
) #(
    description: "Tyrosine RNA sequence 1"
    input: #(
        strand: "UAU"
    )
    expected: ["Tyrosine"]
    function: "proteins"
    uuid: "54e1e7d8-63c0-456d-91d2-062c72f8eef5"
) #(
    description: "Tyrosine RNA sequence 2"
    input: #(
        strand: "UAC"
    )
    expected: ["Tyrosine"]
    function: "proteins"
    uuid: "47bcfba2-9d72-46ad-bbce-22f7666b7eb1"
) #(
    description: "Cysteine RNA sequence 1"
    input: #(
        strand: "UGU"
    )
    expected: ["Cysteine"]
    function: "proteins"
    uuid: "3a691829-fe72-43a7-8c8e-1bd083163f72"
) #(
    description: "Cysteine RNA sequence 2"
    input: #(
        strand: "UGC"
    )
    expected: ["Cysteine"]
    function: "proteins"
    uuid: "1b6f8a26-ca2f-43b8-8262-3ee446021767"
) #(
    description: "Tryptophan RNA sequence"
    input: #(
        strand: "UGG"
    )
    expected: ["Tryptophan"]
    function: "proteins"
    uuid: "1e91c1eb-02c0-48a0-9e35-168ad0cb5f39"
) #(
    description: "STOP codon RNA sequence 1"
    input: #(
        strand: "UAA"
    )
    expected: []
    function: "proteins"
    uuid: "e547af0b-aeab-49c7-9f13-801773a73557"
) #(
    description: "STOP codon RNA sequence 2"
    input: #(
        strand: "UAG"
    )
    expected: []
    function: "proteins"
    uuid: "67640947-ff02-4f23-a2ef-816f8a2ba72e"
) #(
    description: "STOP codon RNA sequence 3"
    input: #(
        strand: "UGA"
    )
    expected: []
    function: "proteins"
    uuid: "9c2ad527-ebc9-4ace-808b-2b6447cb54cb"
) #(
    description: "Translate RNA strand into correct protein list"
    input: #(
        strand: "AUGUUUUGG"
    )
    expected: ["Methionine" "Phenylalanine" "Tryptophan"]
    function: "proteins"
    uuid: "d0f295df-fb70-425c-946c-ec2ec185388e"
) #(
    description: {Translation stops if STOP codon at beginning of sequence}
    input: #(
        strand: "UAGUGG"
    )
    expected: []
    function: "proteins"
    uuid: "e30e8505-97ec-4e5f-a73e-5726a1faa1f4"
) #(
    description: {Translation stops if STOP codon at end of two-codon sequence}
    input: #(
        strand: "UGGUAG"
    )
    expected: ["Tryptophan"]
    function: "proteins"
    uuid: "5358a20b-6f4c-4893-bce4-f929001710f3"
) #(
    description: {Translation stops if STOP codon at end of three-codon sequence}
    input: #(
        strand: "AUGUUUUAA"
    )
    expected: ["Methionine" "Phenylalanine"]
    function: "proteins"
    uuid: "ba16703a-1a55-482f-bb07-b21eef5093a3"
) #(
    description: {Translation stops if STOP codon in middle of three-codon sequence}
    input: #(
        strand: "UGGUAGUGG"
    )
    expected: ["Tryptophan"]
    function: "proteins"
    uuid: "4089bb5a-d5b4-4e71-b79e-b8d1f14a2911"
) #(
    description: {Translation stops if STOP codon in middle of six-codon sequence}
    input: #(
        strand: "UGGUGUUAUUAAUGGUUU"
    )
    expected: ["Tryptophan" "Cysteine" "Tyrosine"]
    function: "proteins"
    uuid: "2c2a2a60-401f-4a80-b977-e0715b23b93d"
)]



print ["Testing" ignore-after "cases…"]

cases: copy/deep/part canonical-cases ignore-after
foreach test-case cases [
	result: context load to file!
		rejoin [exercise-slug %.red]
	;	%.meta/example.red						; test example solution

	; function name
	result-execution: reduce [
		make path! reduce [
			'result
			to word! test-case/function
		]
	]
	; arguments
	append result-execution values-of test-case/input

	result: do result-execution

	print [
		pad/with test-case/description 30 #"."
		either result = test-case/expected [
			"✓"
		] [
			rejoin [{FAILED. Expected: "} test-case/expected {", but got "} result {"}]
		]
	]
]

print [
	(length? canonical-cases) - ignore-after
	"cases ignored."
]
