actions
unselectAll
	(self pleinTableDatas select: [ :tableData | tableData isSelected ]) do: [ :selectedTableData | selectedTableData beUnselected ]