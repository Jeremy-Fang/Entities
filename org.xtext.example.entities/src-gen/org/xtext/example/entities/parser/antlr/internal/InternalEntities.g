/*
 * generated by Xtext 2.22.0
 */
grammar InternalEntities;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.xtext.example.entities.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.xtext.example.entities.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.xtext.example.entities.services.EntitiesGrammarAccess;

}

@parser::members {

 	private EntitiesGrammarAccess grammarAccess;

    public InternalEntitiesParser(TokenStream input, EntitiesGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected EntitiesGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	iv_ruleModel=ruleModel
	{ $current=$iv_ruleModel.current; }
	EOF;

// Rule Model
ruleModel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getModelAccess().getEntitiesEntityParserRuleCall_0());
			}
			lv_entities_0_0=ruleEntity
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getModelRule());
				}
				add(
					$current,
					"entities",
					lv_entities_0_0,
					"org.xtext.example.entities.Entities.Entity");
				afterParserOrEnumRuleCall();
			}
		)
	)*
;

// Entry rule entryRuleEntity
entryRuleEntity returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getEntityRule()); }
	iv_ruleEntity=ruleEntity
	{ $current=$iv_ruleEntity.current; }
	EOF;

// Rule Entity
ruleEntity returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='entity'
		{
			newLeafNode(otherlv_0, grammarAccess.getEntityAccess().getEntityKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getEntityAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getEntityRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			otherlv_2='extends'
			{
				newLeafNode(otherlv_2, grammarAccess.getEntityAccess().getExtendsKeyword_2_0());
			}
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getEntityRule());
						}
					}
					otherlv_3=RULE_ID
					{
						newLeafNode(otherlv_3, grammarAccess.getEntityAccess().getSuperTypeEntityCrossReference_2_1_0());
					}
				)
			)
		)?
		otherlv_4='{'
		{
			newLeafNode(otherlv_4, grammarAccess.getEntityAccess().getLeftCurlyBracketKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getEntityAccess().getAttributesAttributeParserRuleCall_4_0());
				}
				lv_attributes_5_0=ruleAttribute
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getEntityRule());
					}
					add(
						$current,
						"attributes",
						lv_attributes_5_0,
						"org.xtext.example.entities.Entities.Attribute");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_6='}'
		{
			newLeafNode(otherlv_6, grammarAccess.getEntityAccess().getRightCurlyBracketKeyword_5());
		}
	)
;

// Entry rule entryRuleAttribute
entryRuleAttribute returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAttributeRule()); }
	iv_ruleAttribute=ruleAttribute
	{ $current=$iv_ruleAttribute.current; }
	EOF;

// Rule Attribute
ruleAttribute returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getAttributeAccess().getTypeAttributeTypeParserRuleCall_0_0());
				}
				lv_type_0_0=ruleAttributeType
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getAttributeRule());
					}
					set(
						$current,
						"type",
						lv_type_0_0,
						"org.xtext.example.entities.Entities.AttributeType");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttributeRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_2=';'
		{
			newLeafNode(otherlv_2, grammarAccess.getAttributeAccess().getSemicolonKeyword_2());
		}
	)
;

// Entry rule entryRuleAttributeType
entryRuleAttributeType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAttributeTypeRule()); }
	iv_ruleAttributeType=ruleAttributeType
	{ $current=$iv_ruleAttributeType.current; }
	EOF;

// Rule AttributeType
ruleAttributeType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getAttributeTypeAccess().getElementTypeElementTypeParserRuleCall_0_0());
				}
				lv_elementType_0_0=ruleElementType
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getAttributeTypeRule());
					}
					set(
						$current,
						"elementType",
						lv_elementType_0_0,
						"org.xtext.example.entities.Entities.ElementType");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				(
					lv_array_1_0='['
					{
						newLeafNode(lv_array_1_0, grammarAccess.getAttributeTypeAccess().getArrayLeftSquareBracketKeyword_1_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAttributeTypeRule());
						}
						setWithLastConsumed($current, "array", lv_array_1_0 != null, "[");
					}
				)
			)
			(
				(
					lv_length_2_0=RULE_INT
					{
						newLeafNode(lv_length_2_0, grammarAccess.getAttributeTypeAccess().getLengthINTTerminalRuleCall_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAttributeTypeRule());
						}
						setWithLastConsumed(
							$current,
							"length",
							lv_length_2_0,
							"org.eclipse.xtext.common.Terminals.INT");
					}
				)
			)?
			otherlv_3=']'
			{
				newLeafNode(otherlv_3, grammarAccess.getAttributeTypeAccess().getRightSquareBracketKeyword_1_2());
			}
		)?
	)
;

// Entry rule entryRuleElementType
entryRuleElementType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getElementTypeRule()); }
	iv_ruleElementType=ruleElementType
	{ $current=$iv_ruleElementType.current; }
	EOF;

// Rule ElementType
ruleElementType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getElementTypeAccess().getBasicTypeParserRuleCall_0());
		}
		this_BasicType_0=ruleBasicType
		{
			$current = $this_BasicType_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getElementTypeAccess().getEntityTypeParserRuleCall_1());
		}
		this_EntityType_1=ruleEntityType
		{
			$current = $this_EntityType_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleBasicType
entryRuleBasicType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBasicTypeRule()); }
	iv_ruleBasicType=ruleBasicType
	{ $current=$iv_ruleBasicType.current; }
	EOF;

// Rule BasicType
ruleBasicType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_typeName_0_1='string'
				{
					newLeafNode(lv_typeName_0_1, grammarAccess.getBasicTypeAccess().getTypeNameStringKeyword_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getBasicTypeRule());
					}
					setWithLastConsumed($current, "typeName", lv_typeName_0_1, null);
				}
				    |
				lv_typeName_0_2='int'
				{
					newLeafNode(lv_typeName_0_2, grammarAccess.getBasicTypeAccess().getTypeNameIntKeyword_0_1());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getBasicTypeRule());
					}
					setWithLastConsumed($current, "typeName", lv_typeName_0_2, null);
				}
				    |
				lv_typeName_0_3='boolean'
				{
					newLeafNode(lv_typeName_0_3, grammarAccess.getBasicTypeAccess().getTypeNameBooleanKeyword_0_2());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getBasicTypeRule());
					}
					setWithLastConsumed($current, "typeName", lv_typeName_0_3, null);
				}
			)
		)
	)
;

// Entry rule entryRuleEntityType
entryRuleEntityType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getEntityTypeRule()); }
	iv_ruleEntityType=ruleEntityType
	{ $current=$iv_ruleEntityType.current; }
	EOF;

// Rule EntityType
ruleEntityType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getEntityTypeRule());
				}
			}
			otherlv_0=RULE_ID
			{
				newLeafNode(otherlv_0, grammarAccess.getEntityTypeAccess().getEntityEntityCrossReference_0());
			}
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
