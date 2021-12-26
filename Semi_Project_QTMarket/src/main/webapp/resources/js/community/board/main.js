$(document).ready(() => {

	$(".btnCDelete").on("click", (event) => {
		const btn = event.target.dataset.no;
		if (confirm("댓글을 삭제하시겠습니까?")) {
			location.replace("boardComDelete?no=" + btn);
		}

	});
	
	

});


