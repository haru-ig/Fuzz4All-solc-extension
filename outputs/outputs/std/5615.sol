pragma solidity ^0.8.0;
contract Mutates{





function returnTheSameObject(){return this;}
}

pragma solidity ^0.8.0;
contract M127{
bool public a;
function check(M127.address address) public{
if(address == 0x00000000000000000000000000000000000000000){
a = false;
}
else{
a = true;
}
}
}
pragma solidity ^0.8.0;


contract NonEquivalent{

	enum E {
		a
	}

	modifier nonE(){
		E e = E.E.a;
		require( e!= E.a )
		_;
	}

}
