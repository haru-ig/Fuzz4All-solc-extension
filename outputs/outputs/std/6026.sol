pragma solidity ^0.8.0;
library Arithmetic {
	uint internal constant MODULUS_MULTIPLIER = 10**18;

	uint internal constant EXPONENT_MULTIPLIER = 257;

	uint internal constant MAX_NEGATIVE_MODULUS = 2**256-2;

	uint internal constant MIN_MULTIPLICATION_POWER = 1;
	uint internal constant MIN_MULTIPLICATION_INPUT = 0;

	uint internal constant MAX_MULTIPLICATION_POWER = 31;
	uint internal constant MAX_MULTIPLICATION_INPUT = 2**31-1;
	uint internal constant SQRT_BASE = 2**256;

	uint internal constant ABS_BASE = 10**9;
	uint internal constant MIN_NEGATIVE_INPUT = -(1 ** 256);


	function squareMod(uint x) internal pure returns(uint) {
		uint squared = x * x;
		return (squared % MODULUS_MULTIPLIER) / EXPONENT_MULTIPLIER;
	}

	function exponentMod(uint x, uint exponent) internal pure returns (uint) {
		return x * EXPONENT_MULTIPLIER ** exponent;
	}

	function multiply(uint x, uint y) internal pure returns (uint) {
		uint result = 0;
		uint multiplier = power();
		if(x >= multiplier) {
			if(x >= y) {
				y = exponentDiv(y, multiplier);
				while(x >= y) {
					x %= y;
					y = (y * multiplier) % MODULUS_MULTIPLIER;
				}
			}
		}
		while(y!= 0) {
			if (y & 1 == 1) {
				result ^= x;
			}
			x *= y;
			y >>= 1;
		}
		while (multiplier > 1) {
				if(x >= multiplier) {
					x = exponentDiv(x, multiplier);
				}
				multiplier >>= 1;
		}
		if(y!= 0) {
				result ^= x;
		}
		return result % MODULUS_MULTIPLIER;
	}

	function div(uint dividend, uint divisor) internal pure returns (uint) {
		if (divisor == 0) {
			return 0;
		}
		if (dividend >= divisor) {
			return (dividend % divisor) / divisor;
		}
		return dividend / divisor;
	}

	function exponentDiv(uint dividend, uint divisor) internal pure returns (uint) {
		uint power = power();
		while (divisor >= power && divisor % power == 0) {
			divisor = (divisor / power) * power;
		}
		return (dividend / divisor + EXPONENT_MULTIPLIER / 2) % MODULUS_MULTIPLIER;
	}


	function power() internal pure returns(uint) {
