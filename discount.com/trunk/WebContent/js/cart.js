$(document).ready(
		function() {

			$(".spinner").spinner({
				min : 1,
				change : function(event, ui) {
					change(event);
				},
				spin : function(event, ui) {
					calculatePrice(event, ui);
				},
				stop : function(event, ui) {
					getCartSummary();
				}
			});

			function change(event) {
				var productCount = event.target.value;
				var productId = event.target.id;

				$.ajax({
					type : "PUT",
					url : "/discount/rest/cart/update/" + productId + "/"
							+ productCount,
					data : {
						productId : productId,
						productCount : productCount
					}
				});
			}

			function calculatePrice(event, ui) {
				var productCount = ui.value;
				var productId = event.target.id;

				var $product = $("#" + productId + "-value");
				var productPrice = getProductPrice(productId);
				$product.text(productPrice * productCount);
			}

			function getCartSummary() {
				getTotalProductsCount();
				getTotalPrice();
			}

			function getTotalProductsCount() {
				var $spinners = $(".spinner");
				var totalProductCount = 0;

				$.each($spinners, function(index, item) {
					var price = parseInt(item.value);
					totalProductCount += price;
				});

				var $totalcount = $(".total-count");
				$totalcount.text(totalProductCount);
			}

			function getTotalPrice() {
				var totalProductsprice = 0;
				var $productPrices = $(".total-product-price .value");

				$productPrices.each(function(index, elem) {
					totalProductsprice += parseInt($(this).text());
				});

				$(".total-price").text(totalProductsprice);
			}

			function getProductPrice(productId) {
				var productPrice = 0;

				$.ajax({
					url : "/discount/rest/product/get/" + productId,
					async : false,
					success : function(data) {
						productPrice = data.price;
					},
					error : function() {
						alert("error");
					}
				});
				return productPrice;
			}

		});