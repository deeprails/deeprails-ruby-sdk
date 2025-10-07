# frozen_string_literal: true

module Deeprails
  [Deeprails::Internal::Type::BaseModel, *Deeprails::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Deeprails::Internal::AnyHash) } }
  end

  Deeprails::Internal::Util.walk_namespaces(Deeprails::Models).each do |mod|
    case mod
    in Deeprails::Internal::Type::Enum | Deeprails::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Deeprails::Internal::Util.walk_namespaces(Deeprails::Models)
                           .lazy
                           .grep(Deeprails::Internal::Type::Union)
                           .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  APIResponse = Deeprails::Models::APIResponse

  DefendCreateWorkflowParams = Deeprails::Models::DefendCreateWorkflowParams

  DefendResponse = Deeprails::Models::DefendResponse

  DefendRetrieveEventParams = Deeprails::Models::DefendRetrieveEventParams

  DefendRetrieveWorkflowParams = Deeprails::Models::DefendRetrieveWorkflowParams

  DefendSubmitEventParams = Deeprails::Models::DefendSubmitEventParams

  DefendUpdateWorkflowParams = Deeprails::Models::DefendUpdateWorkflowParams

  EvaluateCreateParams = Deeprails::Models::EvaluateCreateParams

  EvaluateRetrieveParams = Deeprails::Models::EvaluateRetrieveParams

  Evaluation = Deeprails::Models::Evaluation

  MonitorCreateParams = Deeprails::Models::MonitorCreateParams

  MonitorRetrieveParams = Deeprails::Models::MonitorRetrieveParams

  MonitorSubmitEventParams = Deeprails::Models::MonitorSubmitEventParams

  MonitorUpdateParams = Deeprails::Models::MonitorUpdateParams

  WorkflowEventResponse = Deeprails::Models::WorkflowEventResponse
end
