void SpellMgr::LoadSpellInfoCorrections()
{
        switch (spellInfo->Id)
        {
			case 83991: 
				spellInfo->MaxAffectedTargets = 1;
				spellInfo->Effects[EFFECT_0].TargetA = SpellImplicitTargetInfo(TARGET_UNIT_TARGET_ANY);
				spellInfo->Effects[EFFECT_0].TargetB = SpellImplicitTargetInfo();
				break;
		}
}		