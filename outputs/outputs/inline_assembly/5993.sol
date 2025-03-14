pragma solidity ^0.8.0;
interface IToken {
    function balanceOf(address) external view returns (uint256);
}
contract SemanticallyEquivalentABI {
    struct UserInfo {
        uint256 amount;
    </>)IToken token;
    mapping(address => uint256) balances;
}
contract SemanticallyEquivalentABIExample {
    struct UserInfo {
        uint256 amount;
    }
    mapping(address => UserInfo) userInfo;
    constructor(address _token) {
        userInfo[msg.sender].amount = 1;
        </>)IMToken(_token);
        userInfo[msg.sender].token = address();
    </>)
    }
}
contract SemanticallyEquivalentABIExample2 {
    struct ItemAddress {address item;uint256 amount;address seller;}
    address public a;
    itemAddress[] public itemData;
    constructor() {
        itemData.push(ItemAddress(address(0), 1, msg.sender));
        a = address(0);
    }
}
contract SemanticallyEquivalentABIExample3 {
    struct Purchase {uint256 amount;address buyer;address seller;}
    Purchase[] public purchases;
    address public b;
    uint256 public c;
    uint256 public d;
    function setParameters(address _b, uint256 _c, uint256 _d) public {
        b = _b;
        c = _c;
        d = _d;
    }
    constructor(
        address _b,
        uint256 _c,
        uint256 _d
    ) {
        c = _c;
        d = _d;
        purchases.push(Purchase(0, msg.sender, address(0)));
    }
}
contract SemanticallyEquivalentABIExample4 {
    mapping(address => ItemAddress[]) itemData;
    address public a;
    constructor() {
        itemData[a].push(
