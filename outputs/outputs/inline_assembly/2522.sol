pragma solidity ^0.8.0;
contract Comp2 {
    uint256 private _a;
    constructor(uint32 _b) {
        _a = _b;
    }
    function increase() public {
        _a += 10;
    }
}
pragma solidity ^0.8.0;
interface IPaper {
    uint32 getPage(uint32 _pageIndex) external view returns (uint32);
}
contract Paper {
    IPaper public paper = IPaper(0x4899952115931481b8ef87f013d3b0dc155f88ef);
    uint32 public pageIndex;
    mapping(uint8=> uint8) private page;
    constructor(uint32 _pageIndex) {
        pageIndex = (_pageIndex + 1) % 9;
    }
    function changePageIndex(uint8 _direction) public {
        if (_direction!= 0x01) revert("INVALID_DIRECTION");

        if (pageIndex > 1) {
            pageIndex -= 1;
        } else {
            pageIndex += 9;
        }

        uint32 newPage = paper.getPage(pageIndex);

        uint8 oldPage = uint8(newPage / 10);
        page[oldPage] = page[oldPage] + 1;
    }
}

pragma solidity ^0.8.0;
interface IPaper {}
contract Paper is IPaper {
    IPaper public paper;
    uint32 private _pageIndex;
    mapping(uint8=> uint8) private _page;
    uint32 constant PAGE_COUNT = 10;
    uint8 constant REVEALED = 0xFF;

    constructor(uint32 _pageIndex) {
        paper = IPaper(0x4899952115931481b8ef87f013d3b0dc155f88ef
