pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_3{
	uint A;
	mapping(bytes32 => uint) C;
	constructor(){
		A=30;
		b();
		if(keccak256(abi.encodePacked(A))==keccak256(abi.encodePacked(30))) C[keccak256(abi.encodePacked(A))]=A;
		A=70;
		b();
		if(keccak256(abi.encodePacked(A))==keccak256(abi.encodePacked(70))) C[keccak256(abi.encodePacked(A))]=A;
	}
	function a() public{
		A = C[keccak256(abi.encodePacked(A))];
		b();
		a();
	}
	function b() public{
		A=A+80;
		b();
		C[keccak256(abi.encodePacked(A))]=A;
		C[keccak256(abi.encodePacked(A))]=0;
		a();
	}
}


pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_2{
            enum MyEnum{x,y,z}
            uint A;
            mapping(bytes32 => uint) C;
            function a() public{
                A = C[keccak256(abi.encodePacked(A))];
                b();
                a();
                a();
            }
            function b() public{
                C[keccak256(abi.encodePacked(A))]=A;
                C[keccak256(abi.encodePacked(A))]=0;
                a();
                if(MyEnum(A)==MyEnum.y) C[keccak256(abi.encodePacked(A))]=0;
                A=A+1;
                b();
                a();
