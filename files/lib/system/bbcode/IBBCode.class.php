<?php
namespace wcf\system\bbcode;
use wcf\data\IDatabaseObjectProcessor;

/**
 * Any special bbcode class should implement this interface.
 * 
 * @author	Marcel Werk
 * @copyright	2001-2011 WoltLab GmbH
 * @license	GNU Lesser General Public License <http://opensource.org/licenses/lgpl-license.php>
 * @package	com.woltlab.wcf..bbcode
 * @subpackage	system.bbcode
 * @category 	Community Framework
 */
interface IBBCode extends IDatabaseObjectProcessor {
	/**
	 * Parses a bbcode tag.
	 * 
	 * @param	array					$openingTag
	 * @param	string					$content
	 * @param	array					$closingTag
	 * @param	wcf\system\bbcode\BBCodeParser		$parser
	 * @return	string					parsed tag
	 */
	public function getParsedTag(array $openingTag, $content, array $closingTag, BBCodeParser $parser);
}
