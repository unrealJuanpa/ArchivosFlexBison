%{
#include "archivo.tab.h"
%}


%%
"#"			{ return NUMERAL; }
"include"		{ return DINCLUDE; }
" "			{ return DESPACIO; }
"<"			{ return DMI; }
">"			{ return DMF; }
[a-zA-Z0-9]{1,}".h"	{ return NOMBRE; }
\n			{ return EOL; }
\"			{ return COMILLA; }
.			{  }

%%



