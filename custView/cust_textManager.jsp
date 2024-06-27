<%@ page import="db.TextManager,dao.CartDAO" %>

<body>
<% 
	TextManager oldText = new TextManager();
	request.setAttribute("oldText", oldText);

	CartDAO.createCart(request);
	CartDAO cdao = new CartDAO();
	int cartAmt = cdao.getCartAmount(request);
	request.setAttribute("cartAmt", cartAmt);
%>
</body>