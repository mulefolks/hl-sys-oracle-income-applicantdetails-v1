%dw 2.0
output application/java
---
{
	"httpStatus": if ( not isEmpty(error.errorMessage.attributes.statusCode) ) (error.errorMessage.attributes.statusCode) else (attributes.statusCode default 500),
	"errorCode": "UNSPECIFIED_ERROR",
	"errorDescription": (error.errorMessage.'payload'.errorMessage) default error.description
}