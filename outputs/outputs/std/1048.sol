pragma solidity ^0.8.0;
contract ArrayMut2xN {
	contract ArrayMutN
	{
		function array(uint256[4,4] memory _r) public pure {
			_r[0] = 42;
			_r[1] = 42;
			_r[0][0] = 43;
			_r[0][1] = 0;
			_r[1][0] = 0;
			_r[1][1] = 43;
           	_r[0][0] = 0;
           	_r[0][1] = 0;
           	_r[1][0] = 0;
           	_r[1][1] = 43;
			for(uint256 i=0; i<4;i++){
				for(uint256 j=0; j<4;j++)
					{ _r[i+1][j+1] = _r[i][j]; }
			}
			for(uint256 i=0; i<4;i++)
				{
					for(uint256 j=0; j<4;j++)
					{
						assert(_r[0][0] == j);
						assert(_r[1][0] == i);
						assert(_r[2][0] == _r[0][1]);
						assert(_r[3][0] == _r[1][1]);
					    uint256 _i = _r[j][i];

					}
				}
		}
	 }
}
