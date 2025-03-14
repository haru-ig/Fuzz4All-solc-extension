pragma solidity ^0.8.0;
contract MyContract {
	struct Foo {
		address[] addresses;
	}
	Foo[] bar;
	Foo[] bar2;
    function f() public returns(Foo){
       bar2.push(bar);
       return Foo(bar);
    }
}
