%dw 2.0
output application/json
---
{
	success: false,
    errors:[
    {
        error_code: vars.vErrorMapping.errorCode,
        error_message: vars.vErrorMapping.errorDescription
    }]
}