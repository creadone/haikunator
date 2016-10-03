require "haikunator/version"
require "securerandom"

module Haikunator
  class << self
    def haikunate(token_range = 9999, delimiter = "-")
      build(token_range, delimiter)
    end

    private

    def build(token_range, delimiter)
      sections = [
        adjectives[random_seed % adjectives.length],
        nouns[random_seed % nouns.length],
        token(token_range)
      ]

      sections.compact.join(delimiter)
    end

    def random_seed
      SecureRandom.random_number(4096)
    end

    def token(range)
      SecureRandom.random_number(range) if range > 0
    end

    def adjectives
      %w(
         different used important every large available popular able basic known various difficult
         several united historical hot useful mental scared additional emotional old political
         similar healthy financial medical traditional federal entire strong actual significant
         successful electrical expensive pregnant intelligent interesting poor happy responsible
         cute helpful recent willing nice wonderful impossible serious huge rare technical typical
         competitive critical electronic immediate aware educational environmental global legal
         relevant accurate capable dangerous dramatic efficient powerful foreign hungry practical
         psychological severe suitable numerous sufficient unusual consistent cultural existing
         famous pure afraid obvious careful latter unhappy acceptable aggressive boring distinct
         eastern logical reasonable strict administrative automatic civil former massive southern
         unfair visible alive angry desperate exciting friendly lucky realistic sorry ugly unlikely
         anxious comprehensive curious impressive informal inner pleasant sexual sudden terrible
         unable weak wooden asleep confident conscious decent embarrassed guilty lonely mad nervous
         odd remarkable substantial suspicious tall tiny more some one all many most other such even
         new just good any each much own great another same few free right still best public human
         both local sure better general specific enough long small less high certain little common
         next simple hard past big possible particular real major personal current left national
         least natural physical short last single individual main potential professional international
         lower open according alternative special working true whole clear dry easy cold commercial
         full low primary worth necessary positive present close creative green late fit glad proper
         complex content due effective middle regular fast independent original wide beautiful complete
         active negative safe visual wrong ago quick ready straight white direct excellent extra junior
         pretty unique classic final overall private separate western alone familiar official perfect
         bright broad comfortable flat rich warm young heavy valuable correct leading slow clean fresh
         normal secret tough brown cheap deep objective secure thin chemical cool extreme exact fair
         fine formal opposite remote total vast lost smooth dark double equal firm frequent internal
         sensitive constant minor previous raw soft solid weird amazing annual busy dead FALSE round
         sharp thick wise equivalent initial narrow nearby proud spiritual wild adult apart brief crazy
         prior rough sad sick strange external illegal loud mobile nasty ordinary royal senior super
         tight upper yellow dependent funny gross ill spare sweet upstairs usual brave calm dirty downtown
         grand honest loose male quiet brilliant dear drunk empty female inevitable neat ok representative
         silly slight smart stupid temporary weekly that this what which time these work no only then
         first money over business his game think after life day home economy away either fat key training
         top level far fun house kind future action live period subject mean stock chance beginning upset
         chicken head material salt car appropriate inside outside standard medium choice north square born
         capital shot front living plastic express feeling otherwise plus savings animal budget minute
         character maximum novel plenty select background forward glass joint master red vegetable ideal
         kitchen mother party relative signal street connect minimum sea south status daughter hour trick
         afternoon gold mission agent corner east neither parking routine swimming winter airline designer
         dress emergency evening extension holiday horror mountain patient proof west wine expert native
         opening silver waste plane leather purple specialist bitter incident motor pretend prize resident
      )
    end

    def nouns
      %w(
        people history way art world information map two family government health system computer
        meat year thanks music person reading method data food understanding theory law bird
        literature problem software control knowledge power ability economics love internet
        television science library nature fact product idea temperature investment area society
        activity story industry media thing oven community definition safety quality development
        language management player variety video week security country exam movie organization
        equipment physics analysis policy series thought basis boyfriend direction strategy
        technology army camera freedom paper environment child instance month truth marketing
        university writing article department difference goal news audience fishing growth income
        marriage user combination failure meaning medicine philosophy teacher communication night
        chemistry disease disk energy nation road role soup advertising location success addition
        apartment education math moment painting politics attention decision event property shopping
        student wood competition distribution entertainment office population president unit category
        cigarette context introduction opportunity performance driver flight length magazinenewspaper
        relationship teaching cell dealer finding lake member message phone scene appearance association
        concept customer death discussion housing inflation insurance mood woman advice blood effort
        expression importance opinion payment reality responsibility situation skill statement wealth
        application city county depth estate foundation grandmother heart perspective photo recipe
        studio topic collection depression imagination passion percentage resource setting ad agency
        college connection criticism debt description memory patience secretary solution administration
        aspect attitude director personality psychology recommendation response selection storage
        version alcohol argument complaint contract emphasis highway loss membership possession preparation
        steak union agreement cancer currency employment engineering entry interaction mixture preference
        region republic tradition virus actor classroom delivery device difficulty drama election
        engine football guidance hotel owner priority protection suggestion tension variation anxiety
        atmosphere awareness bath bread candidate climate comparison confusion construction elevator
        emotion employee employer guest height leadership mall manager operation recording sample
        transportation charity cousin disaster editor efficiency excitement extent feedback guitar
        homework leader mom outcome permission presentation promotion reflection refrigerator resolution
        revenue session singer tennis basket bonus cabinet childhood church clothes coffee dinner
        drawing hair hearing initiative judgment lab measurement mode mud orange poetry police possibility
        procedure queen ratio relation restaurant satisfaction sector signature significance song tooth
        town vehicle volume wife accident airport appointment arrival assumption baseball chapter committee
        conversation database enthusiasm error explanation farmer gate girl hall historian hospital injury
        instruction maintenance manufacturer meal perception pie poem presence proposal reception replacement
        revolution river son speech tea village warning winner worker writer assistance breath buyer chest
        chocolate conclusion contribution cookie courage dad desk drawer establishment examination garbage
        grocery honey impression improvement independence insect inspection inspector king ladder menu penalty
        piano potato profession professor quantity reaction requirement salad sister supermarket tongue
        weakness wedding affair ambition analyst apple assignment assistant bathroom bedroom beer birthday
        celebration championship cheek client consequence departure diamond dirt ear fortune friendship
        funeral gene girlfriend hat indication intention lady midnight negotiation obligation passenger
        pizza platform poet pollution recognition reputation shirt sir speaker stranger surgery sympathy
        tale throat trainer uncle youth
      )
    end
  end
end
