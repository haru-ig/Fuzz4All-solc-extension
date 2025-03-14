pragma solidity ^0.8.0;
contract Mutater334_3 {
    address public payee;
    constructor(address payable _payee) {
        payee = _payee;
    }
    receive() payable external {
        payee;
    }
}



pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
contract Caller {
    IERC20 public immutable A;
    constructor(address _A) {
        A = IERC20(_A);
    }
    function func() external {
        A.transfer(address(this), 1);
    }
}
```

# Appendix

Please see Appendix on how to interpret the results on the following tables:

| State                     | Sold      | Returned | State before modification | Sold after modification | Returned after modification |
| :-------------------------| :-------- | :-------: | :--------------------------: | :----------------------: | ------------------------------: |
| Payable fallback           | Yes       | No       | Normal                      | Yes                      | Normal                       |
| No receive and fallback    | Yes / No  | No       | Normal                      | No                       | No                           |
| No payable and fallback   | No        | No       | Normal                      | No                       | Normal                       |
| No receive                | Yes       | No       | Normal                      | No                       | No                           |
| payable (but no fallback) | No        | No       | Normal                      | Yes                      | Normal                       |
| No fallback               | Yes       | No       | Sold                       | Yes                      | Returned                    |
| Receive without fallback  | Yes       | Yes      | Sold                       | No                       |Returned                      |
| No receive and payable  | No        | Yes      | Sold                       | No                       | Returned                    |
