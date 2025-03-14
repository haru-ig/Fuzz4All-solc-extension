pragma solidity ^0.8.0;
contract BitwiseXOR {
	function test() public pure {
		uint x=0xffff;
		x=1<<16;
		uint a;
		a=x;
		x^=0xffff;
		a&=x;
		x^=1<<16;
		uint b;
		b=x;
		b/=10;
		bool c=b!=17;
		if(c) msg.sender.transfer(x);
		x^=0xffffffff;
		uint d;
		d=2**(152-x);
	}
}
contract Array {
	uint public len;
	address public array;

	function write() public {
		len=1;
		array=msg.sender;
	}

	function set(uint idx, uint value) public {
		msg.sender.transfer(value);
		array[idx]=value;
	}

	function get(uint idx) public view returns(uint) {
		return array[idx];
	}

	function push(uint value) public {
		msg.sender.transfer(value);
		len++;
		array[len]=value;
	}

	function pop() public {
		uint value=get(len-1);
		array[len]=0;
		delete array[len];
		len--;
		msg.sender.transfer(value);
	}

	function get_min() public view returns(uint) {
		uint min=array[0];
		for(uint i=1;i<len;i++) {
			if(min>array[i])
				min=array[i];
		}
		return min;
	}

	function get_max() public view returns(uint) {
		uint max=array[0];
		for(uint i=1;i<len;i++) {
			if(max<array[i])
				max=array[i];
		}
		return max;
	}

	function sum() public view returns(uint) {
		uint sum=0;
		for(uint i=0;i<len;i++) {
			sum+=array[i];
		}
		return sum;
	}

	function minmax() public view returns(uint,uint) {
		uint min=get_min();
		uint max=get_max();
		for(uint i=0;i<len-1;i++) {
			if(min>array[i+1]) {
				min=array[i];
			}
			if(max<array[i+1]) {
				max=array[i];
			}
		}
		return (min, max);
