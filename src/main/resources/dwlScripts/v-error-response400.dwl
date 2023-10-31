%dw 2.0
output application/java
---
{
	"httpStatus": 400,
	"errorCode": "APIKIT-400-BAD-REQUEST",
	"errorDescription": error.description default "Resource not found while processing a request"
}