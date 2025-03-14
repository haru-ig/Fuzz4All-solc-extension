pragma solidity ^0.8.0;
contract SemanticCheckSemanticCheckModerated {

    function add1(uint a) public pure returns(uint) {
        uint result;
        if(a <= 1)
        {
            if(a >= 1)
            {
            	result = a - a*22;
            }else{
            	result = a + a*22;
            }
        }else if(a == 23)
        {
        	result = 22;
        }else if(a <= 100)
        {
        	result = a - a*33;
        }else
        {
        	result = a + a*33;
        }
        assembly {
            revert(0, 0)
        }
    }
}
contract SemanticCheckSemanticCheckMaliciousModerated {

    function add1(uint a) public pure returns(uint) {
        uint result;
        if(a <= 1)
        {
            if(a >= 1)
            {
            	result = a - a*22;
            }else{
            	result = a + a*22;
            }
        }else if(a == 23)
        {
        	result = 22;
        }else if(a <= 100)
        {
        	result = a - a*33;
        }else
        {
        	result = a + a*33;
        }
        assembly {
            revert(0, 0)
        }
    }
}
