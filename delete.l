%{
#include "delete.tab.h"
%}


%%
"DELETE "                                       { return DELETE;    }
"FROM "                                         { return FROM;      }
"WHERE "                                        { return WHERE;     }
(" AND "|" OR ")                                { return OPERADOR;  }
";"      		                                { return EOL;       }
([a-zA-Z]{1,}" = "|[a-zA-Z]{1,}"=")             { return NOMBREIGUAL;    }
([a-zA-Z]{1,}" "|[a-zA-Z]{1,}[0-9]{1,}" ")      { return NTABLA;    }   
([0-9]{1,}|[0-9]{1,}"."[0-9]{1,})               { return VALOR;     }
.			                                    {  }

%%



