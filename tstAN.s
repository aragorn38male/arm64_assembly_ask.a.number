.global _start
_start:

.include "askNum.s"

	askNum
	mov x8, #93
	svc 0
.data
entry: .fill 255, 1, 0
