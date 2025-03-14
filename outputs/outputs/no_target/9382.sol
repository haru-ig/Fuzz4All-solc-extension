pragma solidity ^0.8.0;
contract SemanticEquiv09WithGlobalFunction01
{
    mapping(address => uint) myMap;
    function checkIfMappingExists1() public view returns (bool)
    {
        return myMap[msg.sender]!=0;
    }
    function f() public view returns (bool)
    {
        return msg.sender!=0;
    }
    function logTest() public {



		if (!checkIfMappingExists1())
        {
                for (uint i=1;i=1;i=1)
                {
                        myMap[msg.sender] = 3;
                }
        }
		else
        {
			uint val = myMap[msg.sender];
			if (val == 0)
			{
				myMap[msg.sender]=val+1;
			}
			else{
				return ("InvalidValue");
			}
		}
		uint val2 = myMap[msg.sender];





    }
}
