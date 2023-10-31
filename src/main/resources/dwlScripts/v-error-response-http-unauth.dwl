%dw 2.0
output application/java
---
{
	"httpStatus": if ( not isEmpty(error.errorMessage.attributes.statusCode) ) (error.errorMessage.attributes.statusCode default null) else (attributes.statusCode default 401),
	"errorCode": "HTTP_REQUEST_UNAUTHORIZED_ERROR",
	"errorDescription": (error.errorMessage.'payload'.errorMessage) default error.description
}