

// AHY Q PONERLO OBLIGADO SI NO LA FUNCION 	ShapeshiftForm NO PINCHA EN EL CPP 

// ECHO POR EDDUARD	
typedef std::map<uint32, SpellCooldown> SpellCooldowns;

class Unit : public WorldObject
{
		inline bool IsInFlyForm() const
        {
            ShapeshiftForm form = GetShapeshiftForm();
            return form == FORM_FLIGHT || form == FORM_FLIGHT_EPIC;
        }
}