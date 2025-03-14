pragma solidity ^0.8.0;
contract Mixin {
	library Math {
		function sqrt(uint256 _x) internal pure {
			uint256 _x2 = _x / 2 + 1;

			while (_x2 > 1) {
				_x2 = _x / _x2;
			}

			return _x;
		}



		function mul(uint256 _a, uint256 _b) internal pure returns (uint256) {
			if (_a == 0) {
				return 0;
			}

			uint256 c = _a * _b;
			require(c / _a == _b, "Error: Integer multiplication overflow");

			return c;
		}
	}
}
