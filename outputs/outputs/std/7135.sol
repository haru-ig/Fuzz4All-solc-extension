pragma solidity ^0.8.0;
contract BitwiseXOR {
	uint8[254] public array;
	function test() public {
		uint8[254] memory arr2 = array;
		uint8 a;
		uint8 b;
		for(uint8 _i = 0; _i < 254; _i += 1){
			a = arr2[_i];
			b = a;
			b ^= uint8(a&127);
			arr2[_i] = b;
			if (int2address(b)^int2address(a) == b) {
				address(arr2[_i]).call{value:5000}(new bytes(0));
			}
		}
	}
}


pragma solidity ^0.8.0;
struct Crop {
	uint year;
	uint month;
	uint day;
}
contract Crop {
	mapping(uint => uint) daysUntilNextFall;
	address[] mints;
	function mint() public {
		mints.push(msg.sender);
		uint year = block.timestamp/1000000000;
		uint month = uint( ( block.timestamp / 1000 / 60 / 60 )) % 12;
		uint day = uint( ( block.timestamp / 1000 / 60 / 60 / 24 )) % 28;

		uint days = daysUntilNextFall[block.timestamp];
		while(days < 150 && day!= 1) {
			day++;
			days++;
		}

		daysUntilNextFall[block.timestamp] = day;
		uint result = day+1;

		if( (year + 150 <= block.timestamp) && month<10) {
			mints.push(uint2address(block.timestamp - (month * 31 * 24 *365 + block.timestamp) + result));
		}
	}

	function nextMonth() public payable {
		uint newdays = daysUntilNextFall[block.timestamp];
		if(newdays < 16) {
			newdays = newdays + 30;
		}

		uint year = block.timestamp/1000000000;
		uint month = uint((block.timestamp)/1000/60) % 12;
		uint days = daysUntilNextFall[block.timestamp];
		while(days > new
