pragma solidity ^0.8.0;

contract SimpleY5 {
    mapping(uint256 => uint256) public b;

    function f(uint256 n) public view returns (uint256){
        uint256 val = (1 / (b[n] + n * n) + n + 1) + n + 1;
        uint256 sum = n + 2;

        for(uint256 i = 2; i < val; i++){
            uint256 x = sum + n + 1;
            sum += i + 1*i + 2*i + i*i*i;
            b[x] = n;
        }
        return (1 / (1 / (b[sum] + n * sum) + 1) + sum + 1) * ((1 / (1 / (b[sum] + n * sum) + 1) + sum + 1) + sum + 1);
    }
}
