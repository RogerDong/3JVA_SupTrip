
	    <div class="navbar navbar-default navbar-fixed-top">
	        <div class="container">
	            <div class="navbar-header">
	                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                </button>
	                <a class="navbar-brand" href="#">SupTrip</a>
	            </div>
	            <div class="collapse navbar-collapse">
	                <ul class="nav navbar-nav">
	                    <li><a href="/SupTrip/home">Home</a></li>
	                    <li><a href="/SupTrip/auth/bag">Bag</a></li>
	                    <li><a href="/SupTrip/auth/history">History</a></li>
	                </ul>
	                <ul class="nav navbar-nav navbar-right">
	                	<c:if test="${sessionScope.idbooster == null}">
	                		<li><a href="/SupTrip/login" class="navbar-link">Login</a></li>
	                    	<li><a href="/SupTrip/register" class="navbar-link">Register</a></li>
	                	</c:if>
	                    <c:if test="${sessionScope.idbooster != null}">
	                    	<li><a href="/SupTrip/auth/profile" class="navbar-link">Profile</a></li>
	                    	<li><a href="/SupTrip/auth/logout" class="navbar-link">Logout</a></li>
	                    </c:if>
	                </ul>
	            </div><!--/.nav-collapse -->
	        </div>
	    </div>
	    <div style="height:55px;"></div>
