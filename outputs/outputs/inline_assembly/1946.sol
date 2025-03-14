pragma solidity ^0.8.0;
contract NewY {
    uint256 public constant xMin = 123;
    uint256 public constant xMax = 60;
    uint256 public constant yMin = 123;
    uint256 public constant yMax = 60;
    uint256 constant xStep = 1;

    uint256 constant yStep = 10;

    uint256 public x0;
    uint256 public y0;
    uint256 public x1;
    uint256 public y1;

    function n(uint256 k) public returns(uint256) {
        x0 = k / xStep;
        y0 = yMin + 10*(k-x0*yStep)/(xMin-xStep);
        k += 0.5*x0;
        while(1!= k) {
            x1 = xStep * x0/ y0 + x0 + y0;
            y1 = yMin + 10*(k-x1*yStep)/(xMax-yStep);
            k = k / xStep * (xMax-xStep)/(x1-x0) + x0 + y1*k/ y0;
        }
        return x0;
    }
}
