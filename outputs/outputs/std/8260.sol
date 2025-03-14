pragma solidity ^0.8.0;
contract Convert {
	struct IntAndStr {
		int intVal;
		string strVal;
	}
	IntAndStr convert( string memory _str, bool _signed ) internal pure returns (IntAndStr memory) {
		if( _signed ) return IntAndStr(intVal:-parseInt(_str),strVal:_str);


		return IntAndStr(intVal:-parseUInt(_str),strVal:_str);
	}
	function parseInt(string memory str) internal pure returns (int) {
		int n = 0;
		if(str.length>0) {
			for(uint i = 0; i < str.length; i++) {
				uint c = uint(str[i]);
				if(c>='0' && c<='9')
					n = n*10 + c - '0';
			}
		}
		return n;
	}
	function parseUInt(string memory str) internal pure returns (uint) {
		uint n = 0;
		if(str.length>0) {
			for(uint i = 0; i < str.length; i++) {
				uint c = uint(str[i]);
				if(c>='0' && c<='9')
					n = n*10 + c - '0';
			}
		}
		return n;
	}
}
