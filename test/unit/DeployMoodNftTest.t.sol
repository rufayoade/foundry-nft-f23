// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {DeployMoodNft} from "../../script/DeployMoodNft.s.sol";

contract DeployMoodNftTest is Test {
    DeployMoodNft public deployer;

    function setUp() public {
        deployer = new DeployMoodNft();
    }

    function testConvertSvgToUri() public view {
        // This is the SVG string we are passing to the script
        // Note: We removed the newlines to ensure it matches the minified Base64
        string memory svg =
            '<svg xmlns="http://www.w3.org/2000/svg" width="500" height="500"><text x="200" y="250" fill="blue"> Hi! You decoded this!{" "}</text></svg>';

        // This is the expected Base64 URI.
        // If your tutorial uses 'fill="black"', this string will change.
        // Since you used 'fill="blue"', this is the correct hash for that blue SVG.
        string memory expectedUri =
            "data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI1MDAiIGhlaWdodD0iNTAwIj48dGV4dCB4PSIyMDAiIHk9IjI1MCIgZmlsbD0iYmx1ZSI+IEhpISBZb3UgZGVjb2RlZCB0aGlzIXsiICJ9PC90ZXh0Pjwvc3ZnPg==";

        string memory actualUri = deployer.svgToImageURI(svg);

        // As per the tutorial's debugging advice, we log both to compare
        console.log("Actual:  ", actualUri);
        console.log("Expected:", expectedUri);

        assert(keccak256(abi.encodePacked(actualUri)) == keccak256(abi.encodePacked(expectedUri)));
    }
}
