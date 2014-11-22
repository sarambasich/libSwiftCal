#import "iCalParser.h"
#import <PEGKit/PEGKit.h>


@interface iCalParser ()

@property (nonatomic, retain) NSMutableDictionary *icalobject_memo;
@property (nonatomic, retain) NSMutableDictionary *todoc_memo;
@property (nonatomic, retain) NSMutableDictionary *todoprop_memo;
@property (nonatomic, retain) NSMutableDictionary *alarmc_memo;
@property (nonatomic, retain) NSMutableDictionary *alpha_memo;
@property (nonatomic, retain) NSMutableDictionary *lA_memo;
@property (nonatomic, retain) NSMutableDictionary *lB_memo;
@property (nonatomic, retain) NSMutableDictionary *lC_memo;
@property (nonatomic, retain) NSMutableDictionary *lD_memo;
@property (nonatomic, retain) NSMutableDictionary *lE_memo;
@property (nonatomic, retain) NSMutableDictionary *lF_memo;
@property (nonatomic, retain) NSMutableDictionary *lG_memo;
@property (nonatomic, retain) NSMutableDictionary *lH_memo;
@property (nonatomic, retain) NSMutableDictionary *lI_memo;
@property (nonatomic, retain) NSMutableDictionary *lJ_memo;
@property (nonatomic, retain) NSMutableDictionary *lK_memo;
@property (nonatomic, retain) NSMutableDictionary *lL_memo;
@property (nonatomic, retain) NSMutableDictionary *lM_memo;
@property (nonatomic, retain) NSMutableDictionary *lN_memo;
@property (nonatomic, retain) NSMutableDictionary *lO_memo;
@property (nonatomic, retain) NSMutableDictionary *lP_memo;
@property (nonatomic, retain) NSMutableDictionary *lQ_memo;
@property (nonatomic, retain) NSMutableDictionary *lR_memo;
@property (nonatomic, retain) NSMutableDictionary *lS_memo;
@property (nonatomic, retain) NSMutableDictionary *lT_memo;
@property (nonatomic, retain) NSMutableDictionary *lU_memo;
@property (nonatomic, retain) NSMutableDictionary *lV_memo;
@property (nonatomic, retain) NSMutableDictionary *lW_memo;
@property (nonatomic, retain) NSMutableDictionary *lX_memo;
@property (nonatomic, retain) NSMutableDictionary *lY_memo;
@property (nonatomic, retain) NSMutableDictionary *lZ_memo;
@property (nonatomic, retain) NSMutableDictionary *digit_memo;
@property (nonatomic, retain) NSMutableDictionary *d0_memo;
@property (nonatomic, retain) NSMutableDictionary *d1_memo;
@property (nonatomic, retain) NSMutableDictionary *d2_memo;
@property (nonatomic, retain) NSMutableDictionary *d3_memo;
@property (nonatomic, retain) NSMutableDictionary *d4_memo;
@property (nonatomic, retain) NSMutableDictionary *d5_memo;
@property (nonatomic, retain) NSMutableDictionary *d6_memo;
@property (nonatomic, retain) NSMutableDictionary *d7_memo;
@property (nonatomic, retain) NSMutableDictionary *d8_memo;
@property (nonatomic, retain) NSMutableDictionary *d9_memo;
@property (nonatomic, retain) NSMutableDictionary *altrepparam_memo;
@property (nonatomic, retain) NSMutableDictionary *audioprop_memo;
@property (nonatomic, retain) NSMutableDictionary *bslash_memo;
@property (nonatomic, retain) NSMutableDictionary *cnparam_memo;
@property (nonatomic, retain) NSMutableDictionary *cutypeparam_memo;
@property (nonatomic, retain) NSMutableDictionary *dispprop_memo;
@property (nonatomic, retain) NSMutableDictionary *delfromparam_memo;
@property (nonatomic, retain) NSMutableDictionary *deltoparam_memo;
@property (nonatomic, retain) NSMutableDictionary *dirparam_memo;
@property (nonatomic, retain) NSMutableDictionary *emailprop_memo;
@property (nonatomic, retain) NSMutableDictionary *action_memo;
@property (nonatomic, retain) NSMutableDictionary *actionparam_memo;
@property (nonatomic, retain) NSMutableDictionary *actionvalue_memo;
@property (nonatomic, retain) NSMutableDictionary *attach_memo;
@property (nonatomic, retain) NSMutableDictionary *attachparam_memo;
@property (nonatomic, retain) NSMutableDictionary *attendee_memo;
@property (nonatomic, retain) NSMutableDictionary *attparam_memo;
@property (nonatomic, retain) NSMutableDictionary *binary_memo;
@property (nonatomic, retain) NSMutableDictionary *caladdress_memo;
@property (nonatomic, retain) NSMutableDictionary *calprops_memo;
@property (nonatomic, retain) NSMutableDictionary *categories_memo;
@property (nonatomic, retain) NSMutableDictionary *catparam_memo;
@property (nonatomic, retain) NSMutableDictionary *calscale_memo;
@property (nonatomic, retain) NSMutableDictionary *calparam_memo;
@property (nonatomic, retain) NSMutableDictionary *calvalue_memo;
@property (nonatomic, retain) NSMutableDictionary *class_memo;
@property (nonatomic, retain) NSMutableDictionary *classparam_memo;
@property (nonatomic, retain) NSMutableDictionary *classvalue_memo;
@property (nonatomic, retain) NSMutableDictionary *comment_memo;
@property (nonatomic, retain) NSMutableDictionary *component_memo;
@property (nonatomic, retain) NSMutableDictionary *commparam_memo;
@property (nonatomic, retain) NSMutableDictionary *completed_memo;
@property (nonatomic, retain) NSMutableDictionary *compparam_memo;
@property (nonatomic, retain) NSMutableDictionary *contact_memo;
@property (nonatomic, retain) NSMutableDictionary *contentline_memo;
@property (nonatomic, retain) NSMutableDictionary *contparam_memo;
@property (nonatomic, retain) NSMutableDictionary *created_memo;
@property (nonatomic, retain) NSMutableDictionary *creaparam_memo;
@property (nonatomic, retain) NSMutableDictionary *date_memo;
@property (nonatomic, retain) NSMutableDictionary *datevalue_memo;
@property (nonatomic, retain) NSMutableDictionary *datefullyear_memo;
@property (nonatomic, retain) NSMutableDictionary *datemonth_memo;
@property (nonatomic, retain) NSMutableDictionary *datemday_memo;
@property (nonatomic, retain) NSMutableDictionary *datetime_memo;
@property (nonatomic, retain) NSMutableDictionary *description_memo;
@property (nonatomic, retain) NSMutableDictionary *descparam_memo;
@property (nonatomic, retain) NSMutableDictionary *dtstamp_memo;
@property (nonatomic, retain) NSMutableDictionary *stmparam_memo;
@property (nonatomic, retain) NSMutableDictionary *dtstart_memo;
@property (nonatomic, retain) NSMutableDictionary *dtstparam_memo;
@property (nonatomic, retain) NSMutableDictionary *dtstval_memo;
@property (nonatomic, retain) NSMutableDictionary *dtend_memo;
@property (nonatomic, retain) NSMutableDictionary *dtendparam_memo;
@property (nonatomic, retain) NSMutableDictionary *dtendval_memo;
@property (nonatomic, retain) NSMutableDictionary *due_memo;
@property (nonatomic, retain) NSMutableDictionary *dueparam_memo;
@property (nonatomic, retain) NSMutableDictionary *dueval_memo;
@property (nonatomic, retain) NSMutableDictionary *durvalue_memo;
@property (nonatomic, retain) NSMutableDictionary *durdate_memo;
@property (nonatomic, retain) NSMutableDictionary *durtime_memo;
@property (nonatomic, retain) NSMutableDictionary *durweek_memo;
@property (nonatomic, retain) NSMutableDictionary *durhour_memo;
@property (nonatomic, retain) NSMutableDictionary *durminute_memo;
@property (nonatomic, retain) NSMutableDictionary *dursecond_memo;
@property (nonatomic, retain) NSMutableDictionary *durday_memo;
@property (nonatomic, retain) NSMutableDictionary *duration_memo;
@property (nonatomic, retain) NSMutableDictionary *durparam_memo;
@property (nonatomic, retain) NSMutableDictionary *encodingparam_memo;
@property (nonatomic, retain) NSMutableDictionary *exdate_memo;
@property (nonatomic, retain) NSMutableDictionary *exdtparam_memo;
@property (nonatomic, retain) NSMutableDictionary *exdtval_memo;
@property (nonatomic, retain) NSMutableDictionary *fbtypeparam_memo;
@property (nonatomic, retain) NSMutableDictionary *fmttypeparam_memo;
@property (nonatomic, retain) NSMutableDictionary *typename_memo;
@property (nonatomic, retain) NSMutableDictionary *subtypename_memo;
@property (nonatomic, retain) NSMutableDictionary *regname_memo;
@property (nonatomic, retain) NSMutableDictionary *regnamechars_memo;
@property (nonatomic, retain) NSMutableDictionary *geo_memo;
@property (nonatomic, retain) NSMutableDictionary *geoparam_memo;
@property (nonatomic, retain) NSMutableDictionary *geovalue_memo;
@property (nonatomic, retain) NSMutableDictionary *ianacomp_memo;
@property (nonatomic, retain) NSMutableDictionary *ianaprop_memo;
@property (nonatomic, retain) NSMutableDictionary *name_memo;
@property (nonatomic, retain) NSMutableDictionary *ianatoken_memo;
@property (nonatomic, retain) NSMutableDictionary *vendorid_memo;
@property (nonatomic, retain) NSMutableDictionary *param_memo;
@property (nonatomic, retain) NSMutableDictionary *paramname_memo;
@property (nonatomic, retain) NSMutableDictionary *paramvalue_memo;
@property (nonatomic, retain) NSMutableDictionary *paramtext_memo;
@property (nonatomic, retain) NSMutableDictionary *value_memo;
@property (nonatomic, retain) NSMutableDictionary *qsafechar_memo;
@property (nonatomic, retain) NSMutableDictionary *safechar_memo;
@property (nonatomic, retain) NSMutableDictionary *valuechar_memo;
@property (nonatomic, retain) NSMutableDictionary *nonusascii_memo;
@property (nonatomic, retain) NSMutableDictionary *control_memo;
@property (nonatomic, retain) NSMutableDictionary *quotedstring_memo;
@property (nonatomic, retain) NSMutableDictionary *ianaparam_memo;
@property (nonatomic, retain) NSMutableDictionary *icalparameter_memo;
@property (nonatomic, retain) NSMutableDictionary *icalstream_memo;
@property (nonatomic, retain) NSMutableDictionary *icalbody_memo;
@property (nonatomic, retain) NSMutableDictionary *languageparam_memo;
@property (nonatomic, retain) NSMutableDictionary *language_memo;
@property (nonatomic, retain) NSMutableDictionary *lastmod_memo;
@property (nonatomic, retain) NSMutableDictionary *lstparam_memo;
@property (nonatomic, retain) NSMutableDictionary *location_memo;
@property (nonatomic, retain) NSMutableDictionary *locparam_memo;
@property (nonatomic, retain) NSMutableDictionary *memberparam_memo;
@property (nonatomic, retain) NSMutableDictionary *method_memo;
@property (nonatomic, retain) NSMutableDictionary *metparam_memo;
@property (nonatomic, retain) NSMutableDictionary *metvalue_memo;
@property (nonatomic, retain) NSMutableDictionary *organizer_memo;
@property (nonatomic, retain) NSMutableDictionary *orgparam_memo;
@property (nonatomic, retain) NSMutableDictionary *otherparam_memo;
@property (nonatomic, retain) NSMutableDictionary *partstatparam_memo;
@property (nonatomic, retain) NSMutableDictionary *partstatevent_memo;
@property (nonatomic, retain) NSMutableDictionary *partstattodo_memo;
@property (nonatomic, retain) NSMutableDictionary *partstatjour_memo;
@property (nonatomic, retain) NSMutableDictionary *percent_memo;
@property (nonatomic, retain) NSMutableDictionary *period_memo;
@property (nonatomic, retain) NSMutableDictionary *periodexplicit_memo;
@property (nonatomic, retain) NSMutableDictionary *periodstart_memo;
@property (nonatomic, retain) NSMutableDictionary *pctparam_memo;
@property (nonatomic, retain) NSMutableDictionary *priority_memo;
@property (nonatomic, retain) NSMutableDictionary *prioparam_memo;
@property (nonatomic, retain) NSMutableDictionary *priovalue_memo;
@property (nonatomic, retain) NSMutableDictionary *prodid_memo;
@property (nonatomic, retain) NSMutableDictionary *pidparam_memo;
@property (nonatomic, retain) NSMutableDictionary *pidvalue_memo;
@property (nonatomic, retain) NSMutableDictionary *rangeparam_memo;
@property (nonatomic, retain) NSMutableDictionary *rdate_memo;
@property (nonatomic, retain) NSMutableDictionary *rdtparam_memo;
@property (nonatomic, retain) NSMutableDictionary *rdtval_memo;
@property (nonatomic, retain) NSMutableDictionary *related_memo;
@property (nonatomic, retain) NSMutableDictionary *relparam_memo;
@property (nonatomic, retain) NSMutableDictionary *reltypeparam_memo;
@property (nonatomic, retain) NSMutableDictionary *resources_memo;
@property (nonatomic, retain) NSMutableDictionary *resrcparam_memo;
@property (nonatomic, retain) NSMutableDictionary *recurid_memo;
@property (nonatomic, retain) NSMutableDictionary *repeat_memo;
@property (nonatomic, retain) NSMutableDictionary *repparam_memo;
@property (nonatomic, retain) NSMutableDictionary *ridparam_memo;
@property (nonatomic, retain) NSMutableDictionary *ridval_memo;
@property (nonatomic, retain) NSMutableDictionary *roleparam_memo;
@property (nonatomic, retain) NSMutableDictionary *rrule_memo;
@property (nonatomic, retain) NSMutableDictionary *rrulparam_memo;
@property (nonatomic, retain) NSMutableDictionary *recur_memo;
@property (nonatomic, retain) NSMutableDictionary *recurrulepart_memo;
@property (nonatomic, retain) NSMutableDictionary *freq_memo;
@property (nonatomic, retain) NSMutableDictionary *enddate_memo;
@property (nonatomic, retain) NSMutableDictionary *byseclist_memo;
@property (nonatomic, retain) NSMutableDictionary *seconds_memo;
@property (nonatomic, retain) NSMutableDictionary *byminlist_memo;
@property (nonatomic, retain) NSMutableDictionary *minutes_memo;
@property (nonatomic, retain) NSMutableDictionary *byhrlist_memo;
@property (nonatomic, retain) NSMutableDictionary *hour_memo;
@property (nonatomic, retain) NSMutableDictionary *bywdaylist_memo;
@property (nonatomic, retain) NSMutableDictionary *weekdaynum_memo;
@property (nonatomic, retain) NSMutableDictionary *plus_memo;
@property (nonatomic, retain) NSMutableDictionary *minus_memo;
@property (nonatomic, retain) NSMutableDictionary *ordwk_memo;
@property (nonatomic, retain) NSMutableDictionary *weekday_memo;
@property (nonatomic, retain) NSMutableDictionary *bymodaylist_memo;
@property (nonatomic, retain) NSMutableDictionary *monthdaynum_memo;
@property (nonatomic, retain) NSMutableDictionary *ordmoday_memo;
@property (nonatomic, retain) NSMutableDictionary *byyrdaylist_memo;
@property (nonatomic, retain) NSMutableDictionary *yeardaynum_memo;
@property (nonatomic, retain) NSMutableDictionary *ordyrday_memo;
@property (nonatomic, retain) NSMutableDictionary *bywknolist_memo;
@property (nonatomic, retain) NSMutableDictionary *weeknum_memo;
@property (nonatomic, retain) NSMutableDictionary *bymolist_memo;
@property (nonatomic, retain) NSMutableDictionary *monthnum_memo;
@property (nonatomic, retain) NSMutableDictionary *bysplist_memo;
@property (nonatomic, retain) NSMutableDictionary *setposday_memo;
@property (nonatomic, retain) NSMutableDictionary *rstatus_memo;
@property (nonatomic, retain) NSMutableDictionary *rstatparam_memo;
@property (nonatomic, retain) NSMutableDictionary *rsvpparam_memo;
@property (nonatomic, retain) NSMutableDictionary *statcode_memo;
@property (nonatomic, retain) NSMutableDictionary *statdesc_memo;
@property (nonatomic, retain) NSMutableDictionary *extdata_memo;
@property (nonatomic, retain) NSMutableDictionary *seq_memo;
@property (nonatomic, retain) NSMutableDictionary *seqparam_memo;
@property (nonatomic, retain) NSMutableDictionary *status_memo;
@property (nonatomic, retain) NSMutableDictionary *statparam_memo;
@property (nonatomic, retain) NSMutableDictionary *statvalue_memo;
@property (nonatomic, retain) NSMutableDictionary *statvalueevent_memo;
@property (nonatomic, retain) NSMutableDictionary *statvaluetodo_memo;
@property (nonatomic, retain) NSMutableDictionary *statvaluejour_memo;
@property (nonatomic, retain) NSMutableDictionary *summary_memo;
@property (nonatomic, retain) NSMutableDictionary *summparam_memo;
@property (nonatomic, retain) NSMutableDictionary *sentbyparam_memo;
@property (nonatomic, retain) NSMutableDictionary *text_memo;
@property (nonatomic, retain) NSMutableDictionary *escapedchar_memo;
@property (nonatomic, retain) NSMutableDictionary *tsafechar_memo;
@property (nonatomic, retain) NSMutableDictionary *time_memo;
@property (nonatomic, retain) NSMutableDictionary *timehour_memo;
@property (nonatomic, retain) NSMutableDictionary *timeminute_memo;
@property (nonatomic, retain) NSMutableDictionary *timesecond_memo;
@property (nonatomic, retain) NSMutableDictionary *timeutc_memo;
@property (nonatomic, retain) NSMutableDictionary *trigger_memo;
@property (nonatomic, retain) NSMutableDictionary *trigrel_memo;
@property (nonatomic, retain) NSMutableDictionary *trigrelparam_memo;
@property (nonatomic, retain) NSMutableDictionary *trigabs_memo;
@property (nonatomic, retain) NSMutableDictionary *tzidparam_memo;
@property (nonatomic, retain) NSMutableDictionary *tzidprefix_memo;
@property (nonatomic, retain) NSMutableDictionary *uid_memo;
@property (nonatomic, retain) NSMutableDictionary *uidparam_memo;
@property (nonatomic, retain) NSMutableDictionary *uri_memo;
@property (nonatomic, retain) NSMutableDictionary *url_memo;
@property (nonatomic, retain) NSMutableDictionary *valuetypeparam_memo;
@property (nonatomic, retain) NSMutableDictionary *valuetype_memo;
@property (nonatomic, retain) NSMutableDictionary *version_memo;
@property (nonatomic, retain) NSMutableDictionary *verparam_memo;
@property (nonatomic, retain) NSMutableDictionary *vervalue_memo;
@property (nonatomic, retain) NSMutableDictionary *xcomp_memo;
@property (nonatomic, retain) NSMutableDictionary *xparam_memo;
@property (nonatomic, retain) NSMutableDictionary *xname_memo;
@property (nonatomic, retain) NSMutableDictionary *xprop_memo;
@property (nonatomic, retain) NSMutableDictionary *xwrcalname_memo;
@property (nonatomic, retain) NSMutableDictionary *xwrcalnamep_memo;
@property (nonatomic, retain) NSMutableDictionary *xwrcalsec_memo;
@property (nonatomic, retain) NSMutableDictionary *xwrcalsecp_memo;
@property (nonatomic, retain) NSMutableDictionary *crlf_memo;
@end

@implementation iCalParser { }

- (instancetype)initWithDelegate:(id)d {
    self = [super initWithDelegate:d];
    if (self) {
        
        self.startRuleName = @"icalobject";
        self.tokenKindTab[@"\x03"] = @(ICALPARSER_TOKEN_KIND__X03);
        self.tokenKindTab[@"\x16"] = @(ICALPARSER_TOKEN_KIND__X16);
        self.tokenKindTab[@"INTERVAL"] = @(ICALPARSER_TOKEN_KIND_INTERVAL);
        self.tokenKindTab[@"EXDATE"] = @(ICALPARSER_TOKEN_KIND_EXDATE);
        self.tokenKindTab[@"X-WR-CALNAME"] = @(ICALPARSER_TOKEN_KIND_X_WR_CALNAME);
        self.tokenKindTab[@"\x04"] = @(ICALPARSER_TOKEN_KIND__X04);
        self.tokenKindTab[@"YEARLY"] = @(ICALPARSER_TOKEN_KIND_YEARLY);
        self.tokenKindTab[@"\x17"] = @(ICALPARSER_TOKEN_KIND__X17);
        self.tokenKindTab[@"FBTYPE"] = @(ICALPARSER_TOKEN_KIND_FBTYPE);
        self.tokenKindTab[@"PUBLIC"] = @(ICALPARSER_TOKEN_KIND_PUBLIC);
        self.tokenKindTab[@"FREE"] = @(ICALPARSER_TOKEN_KIND_FREE);
        self.tokenKindTab[@"RELTYPE"] = @(ICALPARSER_TOKEN_KIND_RELTYPE);
        self.tokenKindTab[@"2.0"] = @(ICALPARSER_TOKEN_KIND_VERVALUE);
        self.tokenKindTab[@"DISPLAY"] = @(ICALPARSER_TOKEN_KIND_DISPLAY);
        self.tokenKindTab[@"MEMBER"] = @(ICALPARSER_TOKEN_KIND_MEMBER);
        self.tokenKindTab[@"\x05"] = @(ICALPARSER_TOKEN_KIND__X05);
        self.tokenKindTab[@"RDATE"] = @(ICALPARSER_TOKEN_KIND_RDATE);
        self.tokenKindTab[@"DECLINED"] = @(ICALPARSER_TOKEN_KIND_DECLINED);
        self.tokenKindTab[@"\x18"] = @(ICALPARSER_TOKEN_KIND__X18);
        self.tokenKindTab[@"\x06"] = @(ICALPARSER_TOKEN_KIND__X06);
        self.tokenKindTab[@"GREGORIAN"] = @(ICALPARSER_TOKEN_KIND_CALVALUE);
        self.tokenKindTab[@"CONFIRMED"] = @(ICALPARSER_TOKEN_KIND_CONFIRMED);
        self.tokenKindTab[@"\x19"] = @(ICALPARSER_TOKEN_KIND__X19);
        self.tokenKindTab[@"UTC-OFFSET"] = @(ICALPARSER_TOKEN_KIND_UTC_OFFSET);
        self.tokenKindTab[@"PRIVATE"] = @(ICALPARSER_TOKEN_KIND_PRIVATE);
        self.tokenKindTab[@"PARTSTAT"] = @(ICALPARSER_TOKEN_KIND_PARTSTAT);
        self.tokenKindTab[@"REQUEST-STATUS"] = @(ICALPARSER_TOKEN_KIND_REQUEST_STATUS);
        self.tokenKindTab[@"GEO"] = @(ICALPARSER_TOKEN_KIND_GEO);
        self.tokenKindTab[@"VALARM"] = @(ICALPARSER_TOKEN_KIND_VALARM);
        self.tokenKindTab[@"\x07"] = @(ICALPARSER_TOKEN_KIND__X07);
        self.tokenKindTab[@"CAL-ADDRESS"] = @(ICALPARSER_TOKEN_KIND_CAL_ADDRESS);
        self.tokenKindTab[@"CHAIR"] = @(ICALPARSER_TOKEN_KIND_CHAIR);
        self.tokenKindTab[@"\x08"] = @(ICALPARSER_TOKEN_KIND__X08);
        self.tokenKindTab[@"UNKNOWN"] = @(ICALPARSER_TOKEN_KIND_UNKNOWN);
        self.tokenKindTab[@"START"] = @(ICALPARSER_TOKEN_KIND_START);
        self.tokenKindTab[@"PRIORITY"] = @(ICALPARSER_TOKEN_KIND_PRIORITY);
        self.tokenKindTab[@"MO"] = @(ICALPARSER_TOKEN_KIND_MO);
        self.tokenKindTab[@"\x1a"] = @(ICALPARSER_TOKEN_KIND__X1A);
        self.tokenKindTab[@"GROUP"] = @(ICALPARSER_TOKEN_KIND_GROUP);
        self.tokenKindTab[@"AUDIO"] = @(ICALPARSER_TOKEN_KIND_AUDIO);
        self.tokenKindTab[@"BUSY"] = @(ICALPARSER_TOKEN_KIND_BUSY);
        self.tokenKindTab[@"ROOM"] = @(ICALPARSER_TOKEN_KIND_ROOM);
        self.tokenKindTab[@"\x1b"] = @(ICALPARSER_TOKEN_KIND__X1B);
        self.tokenKindTab[@"ROLE"] = @(ICALPARSER_TOKEN_KIND_ROLE);
        self.tokenKindTab[@"CUTYPE"] = @(ICALPARSER_TOKEN_KIND_CUTYPE);
        self.tokenKindTab[@"FMTTYPE"] = @(ICALPARSER_TOKEN_KIND_FMTTYPE);
        self.tokenKindTab[@"TRUE"] = @(ICALPARSER_TOKEN_KIND_TRUE_UPPER);
        self.tokenKindTab[@"\x1c"] = @(ICALPARSER_TOKEN_KIND__X1C);
        self.tokenKindTab[@"CONTACT"] = @(ICALPARSER_TOKEN_KIND_CONTACT);
        self.tokenKindTab[@"BASE64"] = @(ICALPARSER_TOKEN_KIND_BASE64);
        self.tokenKindTab[@"RESOURCES"] = @(ICALPARSER_TOKEN_KIND_RESOURCES);
        self.tokenKindTab[@"BEGIN"] = @(ICALPARSER_TOKEN_KIND_BEGIN);
        self.tokenKindTab[@"\x0a"] = @(ICALPARSER_TOKEN_KIND__X0A);
        self.tokenKindTab[@"\x1d"] = @(ICALPARSER_TOKEN_KIND__X1D);
        self.tokenKindTab[@"BYWEEKNO"] = @(ICALPARSER_TOKEN_KIND_BYWEEKNO);
        self.tokenKindTab[@"DAILY"] = @(ICALPARSER_TOKEN_KIND_DAILY);
        self.tokenKindTab[@"UNTIL"] = @(ICALPARSER_TOKEN_KIND_UNTIL);
        self.tokenKindTab[@"TRIGGER"] = @(ICALPARSER_TOKEN_KIND_TRIGGER);
        self.tokenKindTab[@"\x0b"] = @(ICALPARSER_TOKEN_KIND__X0B);
        self.tokenKindTab[@"CREATED"] = @(ICALPARSER_TOKEN_KIND_CREATED);
        self.tokenKindTab[@"\x1e"] = @(ICALPARSER_TOKEN_KIND__X1E);
        self.tokenKindTab[@"SA"] = @(ICALPARSER_TOKEN_KIND_SA);
        self.tokenKindTab[@"BINARY"] = @(ICALPARSER_TOKEN_KIND_BINARY);
        self.tokenKindTab[@"BUSY-TENTATIVE"] = @(ICALPARSER_TOKEN_KIND_BUSY_TENTATIVE);
        self.tokenKindTab[@"\x0c"] = @(ICALPARSER_TOKEN_KIND__X0C);
        self.tokenKindTab[@"X-"] = @(ICALPARSER_TOKEN_KIND_1);
        self.tokenKindTab[@"SIBLING"] = @(ICALPARSER_TOKEN_KIND_SIBLING);
        self.tokenKindTab[@"\x1f"] = @(ICALPARSER_TOKEN_KIND__X1F);
        self.tokenKindTab[@"PARENT"] = @(ICALPARSER_TOKEN_KIND_PARENT);
        self.tokenKindTab[@"PERCENT-COMPLETE"] = @(ICALPARSER_TOKEN_KIND_PERCENT_COMPLETE);
        self.tokenKindTab[@"\x0d"] = @(ICALPARSER_TOKEN_KIND__X0D);
        self.tokenKindTab[@"DELEGATED"] = @(ICALPARSER_TOKEN_KIND_DELEGATED);
        self.tokenKindTab[@"INTEGER"] = @(ICALPARSER_TOKEN_KIND_INTEGER);
        self.tokenKindTab[@"X-WR-CALDESC"] = @(ICALPARSER_TOKEN_KIND_X_WR_CALDESC);
        self.tokenKindTab[@"DTSTART"] = @(ICALPARSER_TOKEN_KIND_DTSTART);
        self.tokenKindTab[@"\x0e"] = @(ICALPARSER_TOKEN_KIND__X0E);
        self.tokenKindTab[@"FREQ"] = @(ICALPARSER_TOKEN_KIND_FREQ);
        self.tokenKindTab[@"TH"] = @(ICALPARSER_TOKEN_KIND_TH);
        self.tokenKindTab[@"!"] = @(ICALPARSER_TOKEN_KIND_BANG);
        self.tokenKindTab[@"\x0f"] = @(ICALPARSER_TOKEN_KIND__X0F);
        self.tokenKindTab[@"\""] = @(ICALPARSER_TOKEN_KIND_QUOTE);
        self.tokenKindTab[@"#"] = @(ICALPARSER_TOKEN_KIND_POUND);
        self.tokenKindTab[@"$"] = @(ICALPARSER_TOKEN_KIND_DOLLAR);
        self.tokenKindTab[@"SUMMARY"] = @(ICALPARSER_TOKEN_KIND_SUMMARY);
        self.tokenKindTab[@"&"] = @(ICALPARSER_TOKEN_KIND_AMPERSAND);
        self.tokenKindTab[@"TENTATIVE"] = @(ICALPARSER_TOKEN_KIND_TENTATIVE);
        self.tokenKindTab[@"DATE-TIME"] = @(ICALPARSER_TOKEN_KIND_DATE_TIME);
        self.tokenKindTab[@"LOCATION"] = @(ICALPARSER_TOKEN_KIND_LOCATION);
        self.tokenKindTab[@"DELEGATED-FROM"] = @(ICALPARSER_TOKEN_KIND_DELEGATED_FROM);
        self.tokenKindTab[@"DUE"] = @(ICALPARSER_TOKEN_KIND_DUE);
        self.tokenKindTab[@"REQ-PARTICIPANT"] = @(ICALPARSER_TOKEN_KIND_REQ_PARTICIPANT);
        self.tokenKindTab[@"+"] = @(ICALPARSER_TOKEN_KIND_PLUS);
        self.tokenKindTab[@"FINAL"] = @(ICALPARSER_TOKEN_KIND_FINAL);
        self.tokenKindTab[@","] = @(ICALPARSER_TOKEN_KIND_COMMA);
        self.tokenKindTab[@"SU"] = @(ICALPARSER_TOKEN_KIND_SU);
        self.tokenKindTab[@"-"] = @(ICALPARSER_TOKEN_KIND_MINUS);
        self.tokenKindTab[@"WEEKLY"] = @(ICALPARSER_TOKEN_KIND_WEEKLY);
        self.tokenKindTab[@"."] = @(ICALPARSER_TOKEN_KIND_DOT);
        self.tokenKindTab[@"CANCELLED"] = @(ICALPARSER_TOKEN_KIND_CANCELLED);
        self.tokenKindTab[@"/"] = @(ICALPARSER_TOKEN_KIND_FORWARD_SLASH);
        self.tokenKindTab[@"0"] = @(ICALPARSER_TOKEN_KIND_D0);
        self.tokenKindTab[@"WE"] = @(ICALPARSER_TOKEN_KIND_WE);
        self.tokenKindTab[@"1"] = @(ICALPARSER_TOKEN_KIND_D1);
        self.tokenKindTab[@"SENT-BY"] = @(ICALPARSER_TOKEN_KIND_SENT_BY);
        self.tokenKindTab[@"BYDAY"] = @(ICALPARSER_TOKEN_KIND_BYDAY);
        self.tokenKindTab[@"2"] = @(ICALPARSER_TOKEN_KIND_D2);
        self.tokenKindTab[@"RRULE"] = @(ICALPARSER_TOKEN_KIND_RRULE);
        self.tokenKindTab[@"3"] = @(ICALPARSER_TOKEN_KIND_D3);
        self.tokenKindTab[@"UID"] = @(ICALPARSER_TOKEN_KIND_UID);
        self.tokenKindTab[@"4"] = @(ICALPARSER_TOKEN_KIND_D4);
        self.tokenKindTab[@"TU"] = @(ICALPARSER_TOKEN_KIND_TU);
        self.tokenKindTab[@"DESCRIPTION"] = @(ICALPARSER_TOKEN_KIND_DESCRIPTION);
        self.tokenKindTab[@"5"] = @(ICALPARSER_TOKEN_KIND_D5);
        self.tokenKindTab[@"6"] = @(ICALPARSER_TOKEN_KIND_D6);
        self.tokenKindTab[@"7"] = @(ICALPARSER_TOKEN_KIND_D7);
        self.tokenKindTab[@"OPT-PARTICIPANT"] = @(ICALPARSER_TOKEN_KIND_OPT_PARTICIPANT);
        self.tokenKindTab[@"COMMENT"] = @(ICALPARSER_TOKEN_KIND_COMMENT);
        self.tokenKindTab[@"8"] = @(ICALPARSER_TOKEN_KIND_D8);
        self.tokenKindTab[@"9"] = @(ICALPARSER_TOKEN_KIND_D9);
        self.tokenKindTab[@":"] = @(ICALPARSER_TOKEN_KIND_COLON);
        self.tokenKindTab[@";"] = @(ICALPARSER_TOKEN_KIND_SEMI_COLON);
        self.tokenKindTab[@"="] = @(ICALPARSER_TOKEN_KIND_EQUALS);
        self.tokenKindTab[@"IN-PROCESS"] = @(ICALPARSER_TOKEN_KIND_IN_PROCESS);
        self.tokenKindTab[@"VALUE"] = @(ICALPARSER_TOKEN_KIND_VALUE);
        self.tokenKindTab[@"URI"] = @(ICALPARSER_TOKEN_KIND_URI);
        self.tokenKindTab[@"A"] = @(ICALPARSER_TOKEN_KIND_A);
        self.tokenKindTab[@"CHILD"] = @(ICALPARSER_TOKEN_KIND_CHILD);
        self.tokenKindTab[@"B"] = @(ICALPARSER_TOKEN_KIND_B);
        self.tokenKindTab[@"TEXT"] = @(ICALPARSER_TOKEN_KIND_TEXT);
        self.tokenKindTab[@"RSVP"] = @(ICALPARSER_TOKEN_KIND_RSVP);
        self.tokenKindTab[@"C"] = @(ICALPARSER_TOKEN_KIND_C);
        self.tokenKindTab[@"D"] = @(ICALPARSER_TOKEN_KIND_D);
        self.tokenKindTab[@"RANGE"] = @(ICALPARSER_TOKEN_KIND_RANGE);
        self.tokenKindTab[@"E"] = @(ICALPARSER_TOKEN_KIND_E);
        self.tokenKindTab[@"F"] = @(ICALPARSER_TOKEN_KIND_F);
        self.tokenKindTab[@"8BIT"] = @(ICALPARSER_TOKEN_KIND_8BIT);
        self.tokenKindTab[@"CLASS"] = @(ICALPARSER_TOKEN_KIND_CLASS);
        self.tokenKindTab[@"G"] = @(ICALPARSER_TOKEN_KIND_G);
        self.tokenKindTab[@"DELEGATED-TO"] = @(ICALPARSER_TOKEN_KIND_DELEGATED_TO);
        self.tokenKindTab[@"H"] = @(ICALPARSER_TOKEN_KIND_H);
        self.tokenKindTab[@"I"] = @(ICALPARSER_TOKEN_KIND_I);
        self.tokenKindTab[@"J"] = @(ICALPARSER_TOKEN_KIND_J);
        self.tokenKindTab[@"REPEAT"] = @(ICALPARSER_TOKEN_KIND_REPEAT);
        self.tokenKindTab[@"ATTACH"] = @(ICALPARSER_TOKEN_KIND_ATTACH);
        self.tokenKindTab[@"K"] = @(ICALPARSER_TOKEN_KIND_K);
        self.tokenKindTab[@"ALTREP"] = @(ICALPARSER_TOKEN_KIND_ALTREP);
        self.tokenKindTab[@"L"] = @(ICALPARSER_TOKEN_KIND_L);
        self.tokenKindTab[@"SECONDLY"] = @(ICALPARSER_TOKEN_KIND_SECONDLY);
        self.tokenKindTab[@"M"] = @(ICALPARSER_TOKEN_KIND_M);
        self.tokenKindTab[@"N"] = @(ICALPARSER_TOKEN_KIND_N);
        self.tokenKindTab[@"O"] = @(ICALPARSER_TOKEN_KIND_O);
        self.tokenKindTab[@"FALSE"] = @(ICALPARSER_TOKEN_KIND_FALSE_UPPER);
        self.tokenKindTab[@"P"] = @(ICALPARSER_TOKEN_KIND_P);
        self.tokenKindTab[@"ORGANIZER"] = @(ICALPARSER_TOKEN_KIND_ORGANIZER);
        self.tokenKindTab[@"Q"] = @(ICALPARSER_TOKEN_KIND_Q);
        self.tokenKindTab[@"R"] = @(ICALPARSER_TOKEN_KIND_R);
        self.tokenKindTab[@"DIR"] = @(ICALPARSER_TOKEN_KIND_DIR);
        self.tokenKindTab[@"DURATION"] = @(ICALPARSER_TOKEN_KIND_DURATION);
        self.tokenKindTab[@"S"] = @(ICALPARSER_TOKEN_KIND_S_TITLE);
        self.tokenKindTab[@"T"] = @(ICALPARSER_TOKEN_KIND_T);
        self.tokenKindTab[@"LANGUAGE"] = @(ICALPARSER_TOKEN_KIND_LANGUAGE);
        self.tokenKindTab[@"WKST"] = @(ICALPARSER_TOKEN_KIND_WKST);
        self.tokenKindTab[@"U"] = @(ICALPARSER_TOKEN_KIND_U);
        self.tokenKindTab[@"ATTENDEE"] = @(ICALPARSER_TOKEN_KIND_ATTENDEE);
        self.tokenKindTab[@"V"] = @(ICALPARSER_TOKEN_KIND_V);
        self.tokenKindTab[@"W"] = @(ICALPARSER_TOKEN_KIND_W);
        self.tokenKindTab[@"RELATED"] = @(ICALPARSER_TOKEN_KIND_RELATED);
        self.tokenKindTab[@"X"] = @(ICALPARSER_TOKEN_KIND_X);
        self.tokenKindTab[@"Y"] = @(ICALPARSER_TOKEN_KIND_Y);
        self.tokenKindTab[@"BYHOUR"] = @(ICALPARSER_TOKEN_KIND_BYHOUR);
        self.tokenKindTab[@"Z"] = @(ICALPARSER_TOKEN_KIND_Z);
        self.tokenKindTab[@"DRAFT"] = @(ICALPARSER_TOKEN_KIND_DRAFT);
        self.tokenKindTab[@"MINUTELY"] = @(ICALPARSER_TOKEN_KIND_MINUTELY);
        self.tokenKindTab[@"EMAIL"] = @(ICALPARSER_TOKEN_KIND_EMAIL);
        self.tokenKindTab[@"COUNT"] = @(ICALPARSER_TOKEN_KIND_COUNT);
        self.tokenKindTab[@"^"] = @(ICALPARSER_TOKEN_KIND_CARET);
        self.tokenKindTab[@"THISANDFUTURE"] = @(ICALPARSER_TOKEN_KIND_THISANDFUTURE);
        self.tokenKindTab[@"_"] = @(ICALPARSER_TOKEN_KIND_UNDERSCORE);
        self.tokenKindTab[@"ACTION"] = @(ICALPARSER_TOKEN_KIND_ACTION);
        self.tokenKindTab[@"BYSECOND"] = @(ICALPARSER_TOKEN_KIND_BYSECOND);
        self.tokenKindTab[@"a"] = @(ICALPARSER_TOKEN_KIND_A_1);
        self.tokenKindTab[@"b"] = @(ICALPARSER_TOKEN_KIND_B_1);
        self.tokenKindTab[@"c"] = @(ICALPARSER_TOKEN_KIND_C_1);
        self.tokenKindTab[@"TZID"] = @(ICALPARSER_TOKEN_KIND_TZID);
        self.tokenKindTab[@"d"] = @(ICALPARSER_TOKEN_KIND_D_1);
        self.tokenKindTab[@"BUSY-UNAVAILABLE"] = @(ICALPARSER_TOKEN_KIND_BUSY_UNAVAILABLE);
        self.tokenKindTab[@"RESOURCE"] = @(ICALPARSER_TOKEN_KIND_RESOURCE);
        self.tokenKindTab[@"e"] = @(ICALPARSER_TOKEN_KIND_E_1);
        self.tokenKindTab[@"f"] = @(ICALPARSER_TOKEN_KIND_F_1);
        self.tokenKindTab[@"g"] = @(ICALPARSER_TOKEN_KIND_G_1);
        self.tokenKindTab[@"BOOLEAN"] = @(ICALPARSER_TOKEN_KIND_BOOLEAN);
        self.tokenKindTab[@"\0d"] = @(ICALPARSER_TOKEN_KIND__0D);
        self.tokenKindTab[@"h"] = @(ICALPARSER_TOKEN_KIND_H_1);
        self.tokenKindTab[@"CONFIDENTIAL"] = @(ICALPARSER_TOKEN_KIND_CONFIDENTIAL);
        self.tokenKindTab[@"i"] = @(ICALPARSER_TOKEN_KIND_I_1);
        self.tokenKindTab[@"j"] = @(ICALPARSER_TOKEN_KIND_J_1);
        self.tokenKindTab[@"k"] = @(ICALPARSER_TOKEN_KIND_K_1);
        self.tokenKindTab[@"DTEND"] = @(ICALPARSER_TOKEN_KIND_DTEND);
        self.tokenKindTab[@"METHOD"] = @(ICALPARSER_TOKEN_KIND_METHOD);
        self.tokenKindTab[@"HOURLY"] = @(ICALPARSER_TOKEN_KIND_HOURLY);
        self.tokenKindTab[@"l"] = @(ICALPARSER_TOKEN_KIND_L_1);
        self.tokenKindTab[@"m"] = @(ICALPARSER_TOKEN_KIND_M_1);
        self.tokenKindTab[@"SEQUENCE"] = @(ICALPARSER_TOKEN_KIND_SEQUENCE);
        self.tokenKindTab[@"n"] = @(ICALPARSER_TOKEN_KIND_N_1);
        self.tokenKindTab[@"o"] = @(ICALPARSER_TOKEN_KIND_O_1);
        self.tokenKindTab[@"p"] = @(ICALPARSER_TOKEN_KIND_P_1);
        self.tokenKindTab[@"q"] = @(ICALPARSER_TOKEN_KIND_Q_1);
        self.tokenKindTab[@"r"] = @(ICALPARSER_TOKEN_KIND_R_1);
        self.tokenKindTab[@"INDIVIDUAL"] = @(ICALPARSER_TOKEN_KIND_INDIVIDUAL);
        self.tokenKindTab[@"TIME"] = @(ICALPARSER_TOKEN_KIND_TIME);
        self.tokenKindTab[@"PERIOD"] = @(ICALPARSER_TOKEN_KIND_PERIOD);
        self.tokenKindTab[@"s"] = @(ICALPARSER_TOKEN_KIND_S);
        self.tokenKindTab[@"t"] = @(ICALPARSER_TOKEN_KIND_T_1);
        self.tokenKindTab[@"BYMONTHDAY"] = @(ICALPARSER_TOKEN_KIND_BYMONTHDAY);
        self.tokenKindTab[@"u"] = @(ICALPARSER_TOKEN_KIND_U_1);
        self.tokenKindTab[@"v"] = @(ICALPARSER_TOKEN_KIND_V_1);
        self.tokenKindTab[@"w"] = @(ICALPARSER_TOKEN_KIND_W_1);
        self.tokenKindTab[@"BYYEARDAY"] = @(ICALPARSER_TOKEN_KIND_BYYEARDAY);
        self.tokenKindTab[@"PRODID"] = @(ICALPARSER_TOKEN_KIND_PRODID);
        self.tokenKindTab[@"x"] = @(ICALPARSER_TOKEN_KIND_X_1);
        self.tokenKindTab[@"CN"] = @(ICALPARSER_TOKEN_KIND_CN);
        self.tokenKindTab[@"y"] = @(ICALPARSER_TOKEN_KIND_Y_1);
        self.tokenKindTab[@"FLOAT"] = @(ICALPARSER_TOKEN_KIND_FLOAT);
        self.tokenKindTab[@"z"] = @(ICALPARSER_TOKEN_KIND_Z_1);
        self.tokenKindTab[@"END"] = @(ICALPARSER_TOKEN_KIND_END);
        self.tokenKindTab[@"NEEDS-ACTION"] = @(ICALPARSER_TOKEN_KIND_NEEDS_ACTION);
        self.tokenKindTab[@"|"] = @(ICALPARSER_TOKEN_KIND_PIPE);
        self.tokenKindTab[@"\\"] = @(ICALPARSER_TOKEN_KIND_BSLASH);
        self.tokenKindTab[@"DTSTAMP"] = @(ICALPARSER_TOKEN_KIND_DTSTAMP);
        self.tokenKindTab[@"RELATED-TO"] = @(ICALPARSER_TOKEN_KIND_RELATED_TO);
        self.tokenKindTab[@"RECURRENCE-ID"] = @(ICALPARSER_TOKEN_KIND_RECURRENCE_ID);
        self.tokenKindTab[@"VTODO"] = @(ICALPARSER_TOKEN_KIND_VTODO);
        self.tokenKindTab[@"BYSETPOS"] = @(ICALPARSER_TOKEN_KIND_BYSETPOS);
        self.tokenKindTab[@"\x7f"] = @(ICALPARSER_TOKEN_KIND__X7F);
        self.tokenKindTab[@"BYMINUTE"] = @(ICALPARSER_TOKEN_KIND_BYMINUTE);
        self.tokenKindTab[@"NON-PARTICIPANT"] = @(ICALPARSER_TOKEN_KIND_NON_PARTICIPANT);
        self.tokenKindTab[@"\x10"] = @(ICALPARSER_TOKEN_KIND__X10);
        self.tokenKindTab[@"VCALENDAR"] = @(ICALPARSER_TOKEN_KIND_VCALENDAR);
        self.tokenKindTab[@"ACCEPTED"] = @(ICALPARSER_TOKEN_KIND_ACCEPTED);
        self.tokenKindTab[@"CATEGORIES"] = @(ICALPARSER_TOKEN_KIND_CATEGORIES);
        self.tokenKindTab[@"STATUS"] = @(ICALPARSER_TOKEN_KIND_STATUS);
        self.tokenKindTab[@"\x11"] = @(ICALPARSER_TOKEN_KIND__X11);
        self.tokenKindTab[@"RECUR"] = @(ICALPARSER_TOKEN_KIND_RECUR);
        self.tokenKindTab[@"MONTHLY"] = @(ICALPARSER_TOKEN_KIND_MONTHLY);
        self.tokenKindTab[@"COMPLETED"] = @(ICALPARSER_TOKEN_KIND_COMPLETED);
        self.tokenKindTab[@"\x12"] = @(ICALPARSER_TOKEN_KIND__X12);
        self.tokenKindTab[@"DATE"] = @(ICALPARSER_TOKEN_KIND_DATE);
        self.tokenKindTab[@"CALSCALE"] = @(ICALPARSER_TOKEN_KIND_CALSCALE);
        self.tokenKindTab[@"\x00"] = @(ICALPARSER_TOKEN_KIND__X00);
        self.tokenKindTab[@"\x13"] = @(ICALPARSER_TOKEN_KIND__X13);
        self.tokenKindTab[@"FR"] = @(ICALPARSER_TOKEN_KIND_FR);
        self.tokenKindTab[@"ENCODING"] = @(ICALPARSER_TOKEN_KIND_ENCODING);
        self.tokenKindTab[@"\x01"] = @(ICALPARSER_TOKEN_KIND__X01);
        self.tokenKindTab[@"LAST-MODIFIED"] = @(ICALPARSER_TOKEN_KIND_LAST_MODIFIED);
        self.tokenKindTab[@"\x14"] = @(ICALPARSER_TOKEN_KIND__X14);
        self.tokenKindTab[@"VERSION"] = @(ICALPARSER_TOKEN_KIND_VERSION);
        self.tokenKindTab[@"\x02"] = @(ICALPARSER_TOKEN_KIND__X02);
        self.tokenKindTab[@"\x15"] = @(ICALPARSER_TOKEN_KIND__X15);
        self.tokenKindTab[@"BYMONTH"] = @(ICALPARSER_TOKEN_KIND_BYMONTH);

        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X03] = @"\x03";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X16] = @"\x16";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_INTERVAL] = @"INTERVAL";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_EXDATE] = @"EXDATE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_X_WR_CALNAME] = @"X-WR-CALNAME";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X04] = @"\x04";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_YEARLY] = @"YEARLY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X17] = @"\x17";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_FBTYPE] = @"FBTYPE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_PUBLIC] = @"PUBLIC";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_FREE] = @"FREE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_RELTYPE] = @"RELTYPE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_VERVALUE] = @"2.0";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DISPLAY] = @"DISPLAY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_MEMBER] = @"MEMBER";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X05] = @"\x05";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_RDATE] = @"RDATE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DECLINED] = @"DECLINED";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X18] = @"\x18";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X06] = @"\x06";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_CALVALUE] = @"GREGORIAN";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_CONFIRMED] = @"CONFIRMED";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X19] = @"\x19";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_UTC_OFFSET] = @"UTC-OFFSET";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_PRIVATE] = @"PRIVATE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_PARTSTAT] = @"PARTSTAT";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_REQUEST_STATUS] = @"REQUEST-STATUS";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_GEO] = @"GEO";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_VALARM] = @"VALARM";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X07] = @"\x07";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_CAL_ADDRESS] = @"CAL-ADDRESS";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_CHAIR] = @"CHAIR";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X08] = @"\x08";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_UNKNOWN] = @"UNKNOWN";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_START] = @"START";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_PRIORITY] = @"PRIORITY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_MO] = @"MO";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X1A] = @"\x1a";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_GROUP] = @"GROUP";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_AUDIO] = @"AUDIO";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BUSY] = @"BUSY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_ROOM] = @"ROOM";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X1B] = @"\x1b";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_ROLE] = @"ROLE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_CUTYPE] = @"CUTYPE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_FMTTYPE] = @"FMTTYPE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_TRUE_UPPER] = @"TRUE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X1C] = @"\x1c";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_CONTACT] = @"CONTACT";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BASE64] = @"BASE64";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_RESOURCES] = @"RESOURCES";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BEGIN] = @"BEGIN";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X0A] = @"\x0a";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X1D] = @"\x1d";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BYWEEKNO] = @"BYWEEKNO";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DAILY] = @"DAILY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_UNTIL] = @"UNTIL";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_TRIGGER] = @"TRIGGER";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X0B] = @"\x0b";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_CREATED] = @"CREATED";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X1E] = @"\x1e";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_SA] = @"SA";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BINARY] = @"BINARY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BUSY_TENTATIVE] = @"BUSY-TENTATIVE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X0C] = @"\x0c";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_1] = @"X-";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_SIBLING] = @"SIBLING";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X1F] = @"\x1f";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_PARENT] = @"PARENT";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_PERCENT_COMPLETE] = @"PERCENT-COMPLETE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X0D] = @"\x0d";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DELEGATED] = @"DELEGATED";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_INTEGER] = @"INTEGER";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_X_WR_CALDESC] = @"X-WR-CALDESC";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DTSTART] = @"DTSTART";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X0E] = @"\x0e";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_FREQ] = @"FREQ";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_TH] = @"TH";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BANG] = @"!";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X0F] = @"\x0f";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_QUOTE] = @"\"";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_POUND] = @"#";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DOLLAR] = @"$";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_SUMMARY] = @"SUMMARY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_AMPERSAND] = @"&";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_TENTATIVE] = @"TENTATIVE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DATE_TIME] = @"DATE-TIME";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_LOCATION] = @"LOCATION";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DELEGATED_FROM] = @"DELEGATED-FROM";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DUE] = @"DUE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_REQ_PARTICIPANT] = @"REQ-PARTICIPANT";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_PLUS] = @"+";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_FINAL] = @"FINAL";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_COMMA] = @",";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_SU] = @"SU";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_MINUS] = @"-";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_WEEKLY] = @"WEEKLY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DOT] = @".";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_CANCELLED] = @"CANCELLED";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_FORWARD_SLASH] = @"/";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_D0] = @"0";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_WE] = @"WE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_D1] = @"1";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_SENT_BY] = @"SENT-BY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BYDAY] = @"BYDAY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_D2] = @"2";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_RRULE] = @"RRULE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_D3] = @"3";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_UID] = @"UID";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_D4] = @"4";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_TU] = @"TU";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DESCRIPTION] = @"DESCRIPTION";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_D5] = @"5";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_D6] = @"6";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_D7] = @"7";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_OPT_PARTICIPANT] = @"OPT-PARTICIPANT";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_COMMENT] = @"COMMENT";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_D8] = @"8";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_D9] = @"9";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_COLON] = @":";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_SEMI_COLON] = @";";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_EQUALS] = @"=";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_IN_PROCESS] = @"IN-PROCESS";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_VALUE] = @"VALUE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_URI] = @"URI";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_A] = @"A";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_CHILD] = @"CHILD";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_B] = @"B";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_TEXT] = @"TEXT";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_RSVP] = @"RSVP";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_C] = @"C";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_D] = @"D";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_RANGE] = @"RANGE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_E] = @"E";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_F] = @"F";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_8BIT] = @"8BIT";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_CLASS] = @"CLASS";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_G] = @"G";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DELEGATED_TO] = @"DELEGATED-TO";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_H] = @"H";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_I] = @"I";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_J] = @"J";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_REPEAT] = @"REPEAT";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_ATTACH] = @"ATTACH";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_K] = @"K";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_ALTREP] = @"ALTREP";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_L] = @"L";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_SECONDLY] = @"SECONDLY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_M] = @"M";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_N] = @"N";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_O] = @"O";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_FALSE_UPPER] = @"FALSE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_P] = @"P";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_ORGANIZER] = @"ORGANIZER";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_Q] = @"Q";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_R] = @"R";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DIR] = @"DIR";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DURATION] = @"DURATION";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_S_TITLE] = @"S";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_T] = @"T";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_LANGUAGE] = @"LANGUAGE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_WKST] = @"WKST";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_U] = @"U";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_ATTENDEE] = @"ATTENDEE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_V] = @"V";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_W] = @"W";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_RELATED] = @"RELATED";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_X] = @"X";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_Y] = @"Y";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BYHOUR] = @"BYHOUR";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_Z] = @"Z";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DRAFT] = @"DRAFT";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_MINUTELY] = @"MINUTELY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_EMAIL] = @"EMAIL";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_COUNT] = @"COUNT";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_CARET] = @"^";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_THISANDFUTURE] = @"THISANDFUTURE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_UNDERSCORE] = @"_";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_ACTION] = @"ACTION";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BYSECOND] = @"BYSECOND";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_A_1] = @"a";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_B_1] = @"b";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_C_1] = @"c";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_TZID] = @"TZID";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_D_1] = @"d";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BUSY_UNAVAILABLE] = @"BUSY-UNAVAILABLE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_RESOURCE] = @"RESOURCE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_E_1] = @"e";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_F_1] = @"f";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_G_1] = @"g";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BOOLEAN] = @"BOOLEAN";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__0D] = @"\0d";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_H_1] = @"h";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_CONFIDENTIAL] = @"CONFIDENTIAL";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_I_1] = @"i";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_J_1] = @"j";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_K_1] = @"k";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DTEND] = @"DTEND";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_METHOD] = @"METHOD";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_HOURLY] = @"HOURLY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_L_1] = @"l";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_M_1] = @"m";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_SEQUENCE] = @"SEQUENCE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_N_1] = @"n";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_O_1] = @"o";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_P_1] = @"p";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_Q_1] = @"q";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_R_1] = @"r";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_INDIVIDUAL] = @"INDIVIDUAL";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_TIME] = @"TIME";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_PERIOD] = @"PERIOD";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_S] = @"s";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_T_1] = @"t";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BYMONTHDAY] = @"BYMONTHDAY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_U_1] = @"u";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_V_1] = @"v";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_W_1] = @"w";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BYYEARDAY] = @"BYYEARDAY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_PRODID] = @"PRODID";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_X_1] = @"x";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_CN] = @"CN";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_Y_1] = @"y";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_FLOAT] = @"FLOAT";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_Z_1] = @"z";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_END] = @"END";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_NEEDS_ACTION] = @"NEEDS-ACTION";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_PIPE] = @"|";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BSLASH] = @"\\";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DTSTAMP] = @"DTSTAMP";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_RELATED_TO] = @"RELATED-TO";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_RECURRENCE_ID] = @"RECURRENCE-ID";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_VTODO] = @"VTODO";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BYSETPOS] = @"BYSETPOS";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X7F] = @"\x7f";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BYMINUTE] = @"BYMINUTE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_NON_PARTICIPANT] = @"NON-PARTICIPANT";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X10] = @"\x10";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_VCALENDAR] = @"VCALENDAR";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_ACCEPTED] = @"ACCEPTED";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_CATEGORIES] = @"CATEGORIES";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_STATUS] = @"STATUS";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X11] = @"\x11";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_RECUR] = @"RECUR";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_MONTHLY] = @"MONTHLY";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_COMPLETED] = @"COMPLETED";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X12] = @"\x12";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_DATE] = @"DATE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_CALSCALE] = @"CALSCALE";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X00] = @"\x00";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X13] = @"\x13";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_FR] = @"FR";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_ENCODING] = @"ENCODING";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X01] = @"\x01";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_LAST_MODIFIED] = @"LAST-MODIFIED";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X14] = @"\x14";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_VERSION] = @"VERSION";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X02] = @"\x02";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND__X15] = @"\x15";
        self.tokenKindNameTab[ICALPARSER_TOKEN_KIND_BYMONTH] = @"BYMONTH";

        self.icalobject_memo = [NSMutableDictionary dictionary];
        self.todoc_memo = [NSMutableDictionary dictionary];
        self.todoprop_memo = [NSMutableDictionary dictionary];
        self.alarmc_memo = [NSMutableDictionary dictionary];
        self.alpha_memo = [NSMutableDictionary dictionary];
        self.lA_memo = [NSMutableDictionary dictionary];
        self.lB_memo = [NSMutableDictionary dictionary];
        self.lC_memo = [NSMutableDictionary dictionary];
        self.lD_memo = [NSMutableDictionary dictionary];
        self.lE_memo = [NSMutableDictionary dictionary];
        self.lF_memo = [NSMutableDictionary dictionary];
        self.lG_memo = [NSMutableDictionary dictionary];
        self.lH_memo = [NSMutableDictionary dictionary];
        self.lI_memo = [NSMutableDictionary dictionary];
        self.lJ_memo = [NSMutableDictionary dictionary];
        self.lK_memo = [NSMutableDictionary dictionary];
        self.lL_memo = [NSMutableDictionary dictionary];
        self.lM_memo = [NSMutableDictionary dictionary];
        self.lN_memo = [NSMutableDictionary dictionary];
        self.lO_memo = [NSMutableDictionary dictionary];
        self.lP_memo = [NSMutableDictionary dictionary];
        self.lQ_memo = [NSMutableDictionary dictionary];
        self.lR_memo = [NSMutableDictionary dictionary];
        self.lS_memo = [NSMutableDictionary dictionary];
        self.lT_memo = [NSMutableDictionary dictionary];
        self.lU_memo = [NSMutableDictionary dictionary];
        self.lV_memo = [NSMutableDictionary dictionary];
        self.lW_memo = [NSMutableDictionary dictionary];
        self.lX_memo = [NSMutableDictionary dictionary];
        self.lY_memo = [NSMutableDictionary dictionary];
        self.lZ_memo = [NSMutableDictionary dictionary];
        self.digit_memo = [NSMutableDictionary dictionary];
        self.d0_memo = [NSMutableDictionary dictionary];
        self.d1_memo = [NSMutableDictionary dictionary];
        self.d2_memo = [NSMutableDictionary dictionary];
        self.d3_memo = [NSMutableDictionary dictionary];
        self.d4_memo = [NSMutableDictionary dictionary];
        self.d5_memo = [NSMutableDictionary dictionary];
        self.d6_memo = [NSMutableDictionary dictionary];
        self.d7_memo = [NSMutableDictionary dictionary];
        self.d8_memo = [NSMutableDictionary dictionary];
        self.d9_memo = [NSMutableDictionary dictionary];
        self.altrepparam_memo = [NSMutableDictionary dictionary];
        self.audioprop_memo = [NSMutableDictionary dictionary];
        self.bslash_memo = [NSMutableDictionary dictionary];
        self.cnparam_memo = [NSMutableDictionary dictionary];
        self.cutypeparam_memo = [NSMutableDictionary dictionary];
        self.dispprop_memo = [NSMutableDictionary dictionary];
        self.delfromparam_memo = [NSMutableDictionary dictionary];
        self.deltoparam_memo = [NSMutableDictionary dictionary];
        self.dirparam_memo = [NSMutableDictionary dictionary];
        self.emailprop_memo = [NSMutableDictionary dictionary];
        self.action_memo = [NSMutableDictionary dictionary];
        self.actionparam_memo = [NSMutableDictionary dictionary];
        self.actionvalue_memo = [NSMutableDictionary dictionary];
        self.attach_memo = [NSMutableDictionary dictionary];
        self.attachparam_memo = [NSMutableDictionary dictionary];
        self.attendee_memo = [NSMutableDictionary dictionary];
        self.attparam_memo = [NSMutableDictionary dictionary];
        self.binary_memo = [NSMutableDictionary dictionary];
        self.caladdress_memo = [NSMutableDictionary dictionary];
        self.calprops_memo = [NSMutableDictionary dictionary];
        self.categories_memo = [NSMutableDictionary dictionary];
        self.catparam_memo = [NSMutableDictionary dictionary];
        self.calscale_memo = [NSMutableDictionary dictionary];
        self.calparam_memo = [NSMutableDictionary dictionary];
        self.calvalue_memo = [NSMutableDictionary dictionary];
        self.class_memo = [NSMutableDictionary dictionary];
        self.classparam_memo = [NSMutableDictionary dictionary];
        self.classvalue_memo = [NSMutableDictionary dictionary];
        self.comment_memo = [NSMutableDictionary dictionary];
        self.component_memo = [NSMutableDictionary dictionary];
        self.commparam_memo = [NSMutableDictionary dictionary];
        self.completed_memo = [NSMutableDictionary dictionary];
        self.compparam_memo = [NSMutableDictionary dictionary];
        self.contact_memo = [NSMutableDictionary dictionary];
        self.contentline_memo = [NSMutableDictionary dictionary];
        self.contparam_memo = [NSMutableDictionary dictionary];
        self.created_memo = [NSMutableDictionary dictionary];
        self.creaparam_memo = [NSMutableDictionary dictionary];
        self.date_memo = [NSMutableDictionary dictionary];
        self.datevalue_memo = [NSMutableDictionary dictionary];
        self.datefullyear_memo = [NSMutableDictionary dictionary];
        self.datemonth_memo = [NSMutableDictionary dictionary];
        self.datemday_memo = [NSMutableDictionary dictionary];
        self.datetime_memo = [NSMutableDictionary dictionary];
        self.description_memo = [NSMutableDictionary dictionary];
        self.descparam_memo = [NSMutableDictionary dictionary];
        self.dtstamp_memo = [NSMutableDictionary dictionary];
        self.stmparam_memo = [NSMutableDictionary dictionary];
        self.dtstart_memo = [NSMutableDictionary dictionary];
        self.dtstparam_memo = [NSMutableDictionary dictionary];
        self.dtstval_memo = [NSMutableDictionary dictionary];
        self.dtend_memo = [NSMutableDictionary dictionary];
        self.dtendparam_memo = [NSMutableDictionary dictionary];
        self.dtendval_memo = [NSMutableDictionary dictionary];
        self.due_memo = [NSMutableDictionary dictionary];
        self.dueparam_memo = [NSMutableDictionary dictionary];
        self.dueval_memo = [NSMutableDictionary dictionary];
        self.durvalue_memo = [NSMutableDictionary dictionary];
        self.durdate_memo = [NSMutableDictionary dictionary];
        self.durtime_memo = [NSMutableDictionary dictionary];
        self.durweek_memo = [NSMutableDictionary dictionary];
        self.durhour_memo = [NSMutableDictionary dictionary];
        self.durminute_memo = [NSMutableDictionary dictionary];
        self.dursecond_memo = [NSMutableDictionary dictionary];
        self.durday_memo = [NSMutableDictionary dictionary];
        self.duration_memo = [NSMutableDictionary dictionary];
        self.durparam_memo = [NSMutableDictionary dictionary];
        self.encodingparam_memo = [NSMutableDictionary dictionary];
        self.exdate_memo = [NSMutableDictionary dictionary];
        self.exdtparam_memo = [NSMutableDictionary dictionary];
        self.exdtval_memo = [NSMutableDictionary dictionary];
        self.fbtypeparam_memo = [NSMutableDictionary dictionary];
        self.fmttypeparam_memo = [NSMutableDictionary dictionary];
        self.typename_memo = [NSMutableDictionary dictionary];
        self.subtypename_memo = [NSMutableDictionary dictionary];
        self.regname_memo = [NSMutableDictionary dictionary];
        self.regnamechars_memo = [NSMutableDictionary dictionary];
        self.geo_memo = [NSMutableDictionary dictionary];
        self.geoparam_memo = [NSMutableDictionary dictionary];
        self.geovalue_memo = [NSMutableDictionary dictionary];
        self.ianacomp_memo = [NSMutableDictionary dictionary];
        self.ianaprop_memo = [NSMutableDictionary dictionary];
        self.name_memo = [NSMutableDictionary dictionary];
        self.ianatoken_memo = [NSMutableDictionary dictionary];
        self.vendorid_memo = [NSMutableDictionary dictionary];
        self.param_memo = [NSMutableDictionary dictionary];
        self.paramname_memo = [NSMutableDictionary dictionary];
        self.paramvalue_memo = [NSMutableDictionary dictionary];
        self.paramtext_memo = [NSMutableDictionary dictionary];
        self.value_memo = [NSMutableDictionary dictionary];
        self.qsafechar_memo = [NSMutableDictionary dictionary];
        self.safechar_memo = [NSMutableDictionary dictionary];
        self.valuechar_memo = [NSMutableDictionary dictionary];
        self.nonusascii_memo = [NSMutableDictionary dictionary];
        self.control_memo = [NSMutableDictionary dictionary];
        self.quotedstring_memo = [NSMutableDictionary dictionary];
        self.ianaparam_memo = [NSMutableDictionary dictionary];
        self.icalparameter_memo = [NSMutableDictionary dictionary];
        self.icalstream_memo = [NSMutableDictionary dictionary];
        self.icalbody_memo = [NSMutableDictionary dictionary];
        self.languageparam_memo = [NSMutableDictionary dictionary];
        self.language_memo = [NSMutableDictionary dictionary];
        self.lastmod_memo = [NSMutableDictionary dictionary];
        self.lstparam_memo = [NSMutableDictionary dictionary];
        self.location_memo = [NSMutableDictionary dictionary];
        self.locparam_memo = [NSMutableDictionary dictionary];
        self.memberparam_memo = [NSMutableDictionary dictionary];
        self.method_memo = [NSMutableDictionary dictionary];
        self.metparam_memo = [NSMutableDictionary dictionary];
        self.metvalue_memo = [NSMutableDictionary dictionary];
        self.organizer_memo = [NSMutableDictionary dictionary];
        self.orgparam_memo = [NSMutableDictionary dictionary];
        self.otherparam_memo = [NSMutableDictionary dictionary];
        self.partstatparam_memo = [NSMutableDictionary dictionary];
        self.partstatevent_memo = [NSMutableDictionary dictionary];
        self.partstattodo_memo = [NSMutableDictionary dictionary];
        self.partstatjour_memo = [NSMutableDictionary dictionary];
        self.percent_memo = [NSMutableDictionary dictionary];
        self.period_memo = [NSMutableDictionary dictionary];
        self.periodexplicit_memo = [NSMutableDictionary dictionary];
        self.periodstart_memo = [NSMutableDictionary dictionary];
        self.pctparam_memo = [NSMutableDictionary dictionary];
        self.priority_memo = [NSMutableDictionary dictionary];
        self.prioparam_memo = [NSMutableDictionary dictionary];
        self.priovalue_memo = [NSMutableDictionary dictionary];
        self.prodid_memo = [NSMutableDictionary dictionary];
        self.pidparam_memo = [NSMutableDictionary dictionary];
        self.pidvalue_memo = [NSMutableDictionary dictionary];
        self.rangeparam_memo = [NSMutableDictionary dictionary];
        self.rdate_memo = [NSMutableDictionary dictionary];
        self.rdtparam_memo = [NSMutableDictionary dictionary];
        self.rdtval_memo = [NSMutableDictionary dictionary];
        self.related_memo = [NSMutableDictionary dictionary];
        self.relparam_memo = [NSMutableDictionary dictionary];
        self.reltypeparam_memo = [NSMutableDictionary dictionary];
        self.resources_memo = [NSMutableDictionary dictionary];
        self.resrcparam_memo = [NSMutableDictionary dictionary];
        self.recurid_memo = [NSMutableDictionary dictionary];
        self.repeat_memo = [NSMutableDictionary dictionary];
        self.repparam_memo = [NSMutableDictionary dictionary];
        self.ridparam_memo = [NSMutableDictionary dictionary];
        self.ridval_memo = [NSMutableDictionary dictionary];
        self.roleparam_memo = [NSMutableDictionary dictionary];
        self.rrule_memo = [NSMutableDictionary dictionary];
        self.rrulparam_memo = [NSMutableDictionary dictionary];
        self.recur_memo = [NSMutableDictionary dictionary];
        self.recurrulepart_memo = [NSMutableDictionary dictionary];
        self.freq_memo = [NSMutableDictionary dictionary];
        self.enddate_memo = [NSMutableDictionary dictionary];
        self.byseclist_memo = [NSMutableDictionary dictionary];
        self.seconds_memo = [NSMutableDictionary dictionary];
        self.byminlist_memo = [NSMutableDictionary dictionary];
        self.minutes_memo = [NSMutableDictionary dictionary];
        self.byhrlist_memo = [NSMutableDictionary dictionary];
        self.hour_memo = [NSMutableDictionary dictionary];
        self.bywdaylist_memo = [NSMutableDictionary dictionary];
        self.weekdaynum_memo = [NSMutableDictionary dictionary];
        self.plus_memo = [NSMutableDictionary dictionary];
        self.minus_memo = [NSMutableDictionary dictionary];
        self.ordwk_memo = [NSMutableDictionary dictionary];
        self.weekday_memo = [NSMutableDictionary dictionary];
        self.bymodaylist_memo = [NSMutableDictionary dictionary];
        self.monthdaynum_memo = [NSMutableDictionary dictionary];
        self.ordmoday_memo = [NSMutableDictionary dictionary];
        self.byyrdaylist_memo = [NSMutableDictionary dictionary];
        self.yeardaynum_memo = [NSMutableDictionary dictionary];
        self.ordyrday_memo = [NSMutableDictionary dictionary];
        self.bywknolist_memo = [NSMutableDictionary dictionary];
        self.weeknum_memo = [NSMutableDictionary dictionary];
        self.bymolist_memo = [NSMutableDictionary dictionary];
        self.monthnum_memo = [NSMutableDictionary dictionary];
        self.bysplist_memo = [NSMutableDictionary dictionary];
        self.setposday_memo = [NSMutableDictionary dictionary];
        self.rstatus_memo = [NSMutableDictionary dictionary];
        self.rstatparam_memo = [NSMutableDictionary dictionary];
        self.rsvpparam_memo = [NSMutableDictionary dictionary];
        self.statcode_memo = [NSMutableDictionary dictionary];
        self.statdesc_memo = [NSMutableDictionary dictionary];
        self.extdata_memo = [NSMutableDictionary dictionary];
        self.seq_memo = [NSMutableDictionary dictionary];
        self.seqparam_memo = [NSMutableDictionary dictionary];
        self.status_memo = [NSMutableDictionary dictionary];
        self.statparam_memo = [NSMutableDictionary dictionary];
        self.statvalue_memo = [NSMutableDictionary dictionary];
        self.statvalueevent_memo = [NSMutableDictionary dictionary];
        self.statvaluetodo_memo = [NSMutableDictionary dictionary];
        self.statvaluejour_memo = [NSMutableDictionary dictionary];
        self.summary_memo = [NSMutableDictionary dictionary];
        self.summparam_memo = [NSMutableDictionary dictionary];
        self.sentbyparam_memo = [NSMutableDictionary dictionary];
        self.text_memo = [NSMutableDictionary dictionary];
        self.escapedchar_memo = [NSMutableDictionary dictionary];
        self.tsafechar_memo = [NSMutableDictionary dictionary];
        self.time_memo = [NSMutableDictionary dictionary];
        self.timehour_memo = [NSMutableDictionary dictionary];
        self.timeminute_memo = [NSMutableDictionary dictionary];
        self.timesecond_memo = [NSMutableDictionary dictionary];
        self.timeutc_memo = [NSMutableDictionary dictionary];
        self.trigger_memo = [NSMutableDictionary dictionary];
        self.trigrel_memo = [NSMutableDictionary dictionary];
        self.trigrelparam_memo = [NSMutableDictionary dictionary];
        self.trigabs_memo = [NSMutableDictionary dictionary];
        self.tzidparam_memo = [NSMutableDictionary dictionary];
        self.tzidprefix_memo = [NSMutableDictionary dictionary];
        self.uid_memo = [NSMutableDictionary dictionary];
        self.uidparam_memo = [NSMutableDictionary dictionary];
        self.uri_memo = [NSMutableDictionary dictionary];
        self.url_memo = [NSMutableDictionary dictionary];
        self.valuetypeparam_memo = [NSMutableDictionary dictionary];
        self.valuetype_memo = [NSMutableDictionary dictionary];
        self.version_memo = [NSMutableDictionary dictionary];
        self.verparam_memo = [NSMutableDictionary dictionary];
        self.vervalue_memo = [NSMutableDictionary dictionary];
        self.xcomp_memo = [NSMutableDictionary dictionary];
        self.xparam_memo = [NSMutableDictionary dictionary];
        self.xname_memo = [NSMutableDictionary dictionary];
        self.xprop_memo = [NSMutableDictionary dictionary];
        self.xwrcalname_memo = [NSMutableDictionary dictionary];
        self.xwrcalnamep_memo = [NSMutableDictionary dictionary];
        self.xwrcalsec_memo = [NSMutableDictionary dictionary];
        self.xwrcalsecp_memo = [NSMutableDictionary dictionary];
        self.crlf_memo = [NSMutableDictionary dictionary];
    }
    return self;
}

- (void)clearMemo {
    [_icalobject_memo removeAllObjects];
    [_todoc_memo removeAllObjects];
    [_todoprop_memo removeAllObjects];
    [_alarmc_memo removeAllObjects];
    [_alpha_memo removeAllObjects];
    [_lA_memo removeAllObjects];
    [_lB_memo removeAllObjects];
    [_lC_memo removeAllObjects];
    [_lD_memo removeAllObjects];
    [_lE_memo removeAllObjects];
    [_lF_memo removeAllObjects];
    [_lG_memo removeAllObjects];
    [_lH_memo removeAllObjects];
    [_lI_memo removeAllObjects];
    [_lJ_memo removeAllObjects];
    [_lK_memo removeAllObjects];
    [_lL_memo removeAllObjects];
    [_lM_memo removeAllObjects];
    [_lN_memo removeAllObjects];
    [_lO_memo removeAllObjects];
    [_lP_memo removeAllObjects];
    [_lQ_memo removeAllObjects];
    [_lR_memo removeAllObjects];
    [_lS_memo removeAllObjects];
    [_lT_memo removeAllObjects];
    [_lU_memo removeAllObjects];
    [_lV_memo removeAllObjects];
    [_lW_memo removeAllObjects];
    [_lX_memo removeAllObjects];
    [_lY_memo removeAllObjects];
    [_lZ_memo removeAllObjects];
    [_digit_memo removeAllObjects];
    [_d0_memo removeAllObjects];
    [_d1_memo removeAllObjects];
    [_d2_memo removeAllObjects];
    [_d3_memo removeAllObjects];
    [_d4_memo removeAllObjects];
    [_d5_memo removeAllObjects];
    [_d6_memo removeAllObjects];
    [_d7_memo removeAllObjects];
    [_d8_memo removeAllObjects];
    [_d9_memo removeAllObjects];
    [_altrepparam_memo removeAllObjects];
    [_audioprop_memo removeAllObjects];
    [_bslash_memo removeAllObjects];
    [_cnparam_memo removeAllObjects];
    [_cutypeparam_memo removeAllObjects];
    [_dispprop_memo removeAllObjects];
    [_delfromparam_memo removeAllObjects];
    [_deltoparam_memo removeAllObjects];
    [_dirparam_memo removeAllObjects];
    [_emailprop_memo removeAllObjects];
    [_action_memo removeAllObjects];
    [_actionparam_memo removeAllObjects];
    [_actionvalue_memo removeAllObjects];
    [_attach_memo removeAllObjects];
    [_attachparam_memo removeAllObjects];
    [_attendee_memo removeAllObjects];
    [_attparam_memo removeAllObjects];
    [_binary_memo removeAllObjects];
    [_caladdress_memo removeAllObjects];
    [_calprops_memo removeAllObjects];
    [_categories_memo removeAllObjects];
    [_catparam_memo removeAllObjects];
    [_calscale_memo removeAllObjects];
    [_calparam_memo removeAllObjects];
    [_calvalue_memo removeAllObjects];
    [_class_memo removeAllObjects];
    [_classparam_memo removeAllObjects];
    [_classvalue_memo removeAllObjects];
    [_comment_memo removeAllObjects];
    [_component_memo removeAllObjects];
    [_commparam_memo removeAllObjects];
    [_completed_memo removeAllObjects];
    [_compparam_memo removeAllObjects];
    [_contact_memo removeAllObjects];
    [_contentline_memo removeAllObjects];
    [_contparam_memo removeAllObjects];
    [_created_memo removeAllObjects];
    [_creaparam_memo removeAllObjects];
    [_date_memo removeAllObjects];
    [_datevalue_memo removeAllObjects];
    [_datefullyear_memo removeAllObjects];
    [_datemonth_memo removeAllObjects];
    [_datemday_memo removeAllObjects];
    [_datetime_memo removeAllObjects];
    [_description_memo removeAllObjects];
    [_descparam_memo removeAllObjects];
    [_dtstamp_memo removeAllObjects];
    [_stmparam_memo removeAllObjects];
    [_dtstart_memo removeAllObjects];
    [_dtstparam_memo removeAllObjects];
    [_dtstval_memo removeAllObjects];
    [_dtend_memo removeAllObjects];
    [_dtendparam_memo removeAllObjects];
    [_dtendval_memo removeAllObjects];
    [_due_memo removeAllObjects];
    [_dueparam_memo removeAllObjects];
    [_dueval_memo removeAllObjects];
    [_durvalue_memo removeAllObjects];
    [_durdate_memo removeAllObjects];
    [_durtime_memo removeAllObjects];
    [_durweek_memo removeAllObjects];
    [_durhour_memo removeAllObjects];
    [_durminute_memo removeAllObjects];
    [_dursecond_memo removeAllObjects];
    [_durday_memo removeAllObjects];
    [_duration_memo removeAllObjects];
    [_durparam_memo removeAllObjects];
    [_encodingparam_memo removeAllObjects];
    [_exdate_memo removeAllObjects];
    [_exdtparam_memo removeAllObjects];
    [_exdtval_memo removeAllObjects];
    [_fbtypeparam_memo removeAllObjects];
    [_fmttypeparam_memo removeAllObjects];
    [_typename_memo removeAllObjects];
    [_subtypename_memo removeAllObjects];
    [_regname_memo removeAllObjects];
    [_regnamechars_memo removeAllObjects];
    [_geo_memo removeAllObjects];
    [_geoparam_memo removeAllObjects];
    [_geovalue_memo removeAllObjects];
    [_ianacomp_memo removeAllObjects];
    [_ianaprop_memo removeAllObjects];
    [_name_memo removeAllObjects];
    [_ianatoken_memo removeAllObjects];
    [_vendorid_memo removeAllObjects];
    [_param_memo removeAllObjects];
    [_paramname_memo removeAllObjects];
    [_paramvalue_memo removeAllObjects];
    [_paramtext_memo removeAllObjects];
    [_value_memo removeAllObjects];
    [_qsafechar_memo removeAllObjects];
    [_safechar_memo removeAllObjects];
    [_valuechar_memo removeAllObjects];
    [_nonusascii_memo removeAllObjects];
    [_control_memo removeAllObjects];
    [_quotedstring_memo removeAllObjects];
    [_ianaparam_memo removeAllObjects];
    [_icalparameter_memo removeAllObjects];
    [_icalstream_memo removeAllObjects];
    [_icalbody_memo removeAllObjects];
    [_languageparam_memo removeAllObjects];
    [_language_memo removeAllObjects];
    [_lastmod_memo removeAllObjects];
    [_lstparam_memo removeAllObjects];
    [_location_memo removeAllObjects];
    [_locparam_memo removeAllObjects];
    [_memberparam_memo removeAllObjects];
    [_method_memo removeAllObjects];
    [_metparam_memo removeAllObjects];
    [_metvalue_memo removeAllObjects];
    [_organizer_memo removeAllObjects];
    [_orgparam_memo removeAllObjects];
    [_otherparam_memo removeAllObjects];
    [_partstatparam_memo removeAllObjects];
    [_partstatevent_memo removeAllObjects];
    [_partstattodo_memo removeAllObjects];
    [_partstatjour_memo removeAllObjects];
    [_percent_memo removeAllObjects];
    [_period_memo removeAllObjects];
    [_periodexplicit_memo removeAllObjects];
    [_periodstart_memo removeAllObjects];
    [_pctparam_memo removeAllObjects];
    [_priority_memo removeAllObjects];
    [_prioparam_memo removeAllObjects];
    [_priovalue_memo removeAllObjects];
    [_prodid_memo removeAllObjects];
    [_pidparam_memo removeAllObjects];
    [_pidvalue_memo removeAllObjects];
    [_rangeparam_memo removeAllObjects];
    [_rdate_memo removeAllObjects];
    [_rdtparam_memo removeAllObjects];
    [_rdtval_memo removeAllObjects];
    [_related_memo removeAllObjects];
    [_relparam_memo removeAllObjects];
    [_reltypeparam_memo removeAllObjects];
    [_resources_memo removeAllObjects];
    [_resrcparam_memo removeAllObjects];
    [_recurid_memo removeAllObjects];
    [_repeat_memo removeAllObjects];
    [_repparam_memo removeAllObjects];
    [_ridparam_memo removeAllObjects];
    [_ridval_memo removeAllObjects];
    [_roleparam_memo removeAllObjects];
    [_rrule_memo removeAllObjects];
    [_rrulparam_memo removeAllObjects];
    [_recur_memo removeAllObjects];
    [_recurrulepart_memo removeAllObjects];
    [_freq_memo removeAllObjects];
    [_enddate_memo removeAllObjects];
    [_byseclist_memo removeAllObjects];
    [_seconds_memo removeAllObjects];
    [_byminlist_memo removeAllObjects];
    [_minutes_memo removeAllObjects];
    [_byhrlist_memo removeAllObjects];
    [_hour_memo removeAllObjects];
    [_bywdaylist_memo removeAllObjects];
    [_weekdaynum_memo removeAllObjects];
    [_plus_memo removeAllObjects];
    [_minus_memo removeAllObjects];
    [_ordwk_memo removeAllObjects];
    [_weekday_memo removeAllObjects];
    [_bymodaylist_memo removeAllObjects];
    [_monthdaynum_memo removeAllObjects];
    [_ordmoday_memo removeAllObjects];
    [_byyrdaylist_memo removeAllObjects];
    [_yeardaynum_memo removeAllObjects];
    [_ordyrday_memo removeAllObjects];
    [_bywknolist_memo removeAllObjects];
    [_weeknum_memo removeAllObjects];
    [_bymolist_memo removeAllObjects];
    [_monthnum_memo removeAllObjects];
    [_bysplist_memo removeAllObjects];
    [_setposday_memo removeAllObjects];
    [_rstatus_memo removeAllObjects];
    [_rstatparam_memo removeAllObjects];
    [_rsvpparam_memo removeAllObjects];
    [_statcode_memo removeAllObjects];
    [_statdesc_memo removeAllObjects];
    [_extdata_memo removeAllObjects];
    [_seq_memo removeAllObjects];
    [_seqparam_memo removeAllObjects];
    [_status_memo removeAllObjects];
    [_statparam_memo removeAllObjects];
    [_statvalue_memo removeAllObjects];
    [_statvalueevent_memo removeAllObjects];
    [_statvaluetodo_memo removeAllObjects];
    [_statvaluejour_memo removeAllObjects];
    [_summary_memo removeAllObjects];
    [_summparam_memo removeAllObjects];
    [_sentbyparam_memo removeAllObjects];
    [_text_memo removeAllObjects];
    [_escapedchar_memo removeAllObjects];
    [_tsafechar_memo removeAllObjects];
    [_time_memo removeAllObjects];
    [_timehour_memo removeAllObjects];
    [_timeminute_memo removeAllObjects];
    [_timesecond_memo removeAllObjects];
    [_timeutc_memo removeAllObjects];
    [_trigger_memo removeAllObjects];
    [_trigrel_memo removeAllObjects];
    [_trigrelparam_memo removeAllObjects];
    [_trigabs_memo removeAllObjects];
    [_tzidparam_memo removeAllObjects];
    [_tzidprefix_memo removeAllObjects];
    [_uid_memo removeAllObjects];
    [_uidparam_memo removeAllObjects];
    [_uri_memo removeAllObjects];
    [_url_memo removeAllObjects];
    [_valuetypeparam_memo removeAllObjects];
    [_valuetype_memo removeAllObjects];
    [_version_memo removeAllObjects];
    [_verparam_memo removeAllObjects];
    [_vervalue_memo removeAllObjects];
    [_xcomp_memo removeAllObjects];
    [_xparam_memo removeAllObjects];
    [_xname_memo removeAllObjects];
    [_xprop_memo removeAllObjects];
    [_xwrcalname_memo removeAllObjects];
    [_xwrcalnamep_memo removeAllObjects];
    [_xwrcalsec_memo removeAllObjects];
    [_xwrcalsecp_memo removeAllObjects];
    [_crlf_memo removeAllObjects];
}

- (void)start {
    [self execute:^{
    
    PKTokenizer *t = self.tokenizer;

    [t.whitespaceState setWhitespaceChars:NO from:'\n' to:'\n'];
    [t.whitespaceState setWhitespaceChars:NO from:'\r' to:'\r'];
    [t setTokenizerState:t.symbolState from:'\n' to:'\n'];
    [t setTokenizerState:t.symbolState from:'\r' to:'\r'];

    }];

    [self icalobject_]; 
    [self matchEOF:YES]; 

}

- (void)__icalobject {
    
    [self match:ICALPARSER_TOKEN_KIND_BEGIN discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_VCALENDAR discard:NO]; 
    [self crlf_]; 
    [self icalbody_]; 
    [self match:ICALPARSER_TOKEN_KIND_END discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_VCALENDAR discard:NO]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchIcalobject:)];
}

- (void)icalobject_ {
    [self parseRule:@selector(__icalobject) withMemo:_icalobject_memo];
}

- (void)__todoc {
    
    [self match:ICALPARSER_TOKEN_KIND_BEGIN discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_VTODO discard:NO]; 
    [self crlf_]; 
    [self todoprop_]; 
    while ([self speculate:^{ [self alarmc_]; }]) {
        [self alarmc_]; 
    }
    [self match:ICALPARSER_TOKEN_KIND_END discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_VTODO discard:NO]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchTodoc:)];
}

- (void)todoc_ {
    [self parseRule:@selector(__todoc) withMemo:_todoc_memo];
}

- (void)__todoprop {
    
    while ([self speculate:^{ if ([self predicts:ICALPARSER_TOKEN_KIND_DTSTAMP, 0]) {[self dtstamp_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_UID, 0]) {[self uid_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_CLASS, 0]) {[self class_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_COMPLETED, 0]) {[self completed_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_CREATED, 0]) {[self created_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DESCRIPTION, 0]) {[self description_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DTSTART, 0]) {[self dtstart_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_GEO, 0]) {[self geo_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_LAST_MODIFIED, 0]) {[self lastmod_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_LOCATION, 0]) {[self location_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_ORGANIZER, 0]) {[self organizer_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_PERCENT_COMPLETE, 0]) {[self percent_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_PRIORITY, 0]) {[self priority_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_RECURRENCE_ID, 0]) {[self recurid_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_SEQUENCE, 0]) {[self seq_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_STATUS, 0]) {[self status_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_SUMMARY, 0]) {[self summary_]; } else if ([self predicts:TOKEN_KIND_BUILTIN_URL, 0]) {[self url_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_RRULE, 0]) {[self rrule_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DUE, 0]) {[self due_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DURATION, 0]) {[self duration_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_ATTACH, ICALPARSER_TOKEN_KIND_SEMI_COLON, 0]) {[self attach_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_ATTENDEE, 0]) {[self attendee_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_CATEGORIES, 0]) {[self categories_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_COMMENT, 0]) {[self comment_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_CONTACT, 0]) {[self contact_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_EXDATE, 0]) {[self exdate_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_REQUEST_STATUS, 0]) {[self rstatus_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_RELATED_TO, 0]) {[self related_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_RESOURCES, 0]) {[self resources_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_RDATE, 0]) {[self rdate_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {[self xprop_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {[self ianaprop_]; } else {[self raise:@"No viable alternative found in rule 'todoprop'."];}}]) {
        if ([self predicts:ICALPARSER_TOKEN_KIND_DTSTAMP, 0]) {
            [self dtstamp_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_UID, 0]) {
            [self uid_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_CLASS, 0]) {
            [self class_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_COMPLETED, 0]) {
            [self completed_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_CREATED, 0]) {
            [self created_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_DESCRIPTION, 0]) {
            [self description_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_DTSTART, 0]) {
            [self dtstart_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_GEO, 0]) {
            [self geo_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_LAST_MODIFIED, 0]) {
            [self lastmod_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_LOCATION, 0]) {
            [self location_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_ORGANIZER, 0]) {
            [self organizer_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_PERCENT_COMPLETE, 0]) {
            [self percent_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_PRIORITY, 0]) {
            [self priority_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_RECURRENCE_ID, 0]) {
            [self recurid_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_SEQUENCE, 0]) {
            [self seq_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_STATUS, 0]) {
            [self status_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_SUMMARY, 0]) {
            [self summary_]; 
        } else if ([self predicts:TOKEN_KIND_BUILTIN_URL, 0]) {
            [self url_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_RRULE, 0]) {
            [self rrule_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_DUE, 0]) {
            [self due_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_DURATION, 0]) {
            [self duration_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_ATTACH, ICALPARSER_TOKEN_KIND_SEMI_COLON, 0]) {
            [self attach_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_ATTENDEE, 0]) {
            [self attendee_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_CATEGORIES, 0]) {
            [self categories_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_COMMENT, 0]) {
            [self comment_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_CONTACT, 0]) {
            [self contact_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_EXDATE, 0]) {
            [self exdate_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_REQUEST_STATUS, 0]) {
            [self rstatus_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_RELATED_TO, 0]) {
            [self related_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_RESOURCES, 0]) {
            [self resources_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_RDATE, 0]) {
            [self rdate_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
            [self xprop_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
            [self ianaprop_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'todoprop'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchTodoprop:)];
}

- (void)todoprop_ {
    [self parseRule:@selector(__todoprop) withMemo:_todoprop_memo];
}

- (void)__alarmc {
    
    if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_BEGIN discard:NO]; [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALARM discard:NO]; [self crlf_]; [self audioprop_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_BEGIN discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_VALARM discard:NO]; 
        [self crlf_]; 
        [self audioprop_]; 
    } else if ([self speculate:^{ [self dispprop_]; }]) {
        [self dispprop_]; 
    } else if ([self speculate:^{ [self emailprop_]; [self match:ICALPARSER_TOKEN_KIND_END discard:NO]; [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALARM discard:NO]; [self crlf_]; }]) {
        [self emailprop_]; 
        [self match:ICALPARSER_TOKEN_KIND_END discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_VALARM discard:NO]; 
        [self crlf_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'alarmc'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchAlarmc:)];
}

- (void)alarmc_ {
    [self parseRule:@selector(__alarmc) withMemo:_alarmc_memo];
}

- (void)__alpha {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, 0]) {
        [self lA_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, 0]) {
        [self lB_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, 0]) {
        [self lC_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D_1, 0]) {
        [self lD_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, 0]) {
        [self lE_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, 0]) {
        [self lF_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, 0]) {
        [self lG_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, 0]) {
        [self lH_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, 0]) {
        [self lI_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, 0]) {
        [self lJ_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, 0]) {
        [self lK_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, 0]) {
        [self lL_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_M_1, 0]) {
        [self lM_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, 0]) {
        [self lN_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, 0]) {
        [self lO_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, 0]) {
        [self lP_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, 0]) {
        [self lQ_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, 0]) {
        [self lR_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, 0]) {
        [self lS_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, 0]) {
        [self lT_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, 0]) {
        [self lU_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, 0]) {
        [self lV_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, 0]) {
        [self lW_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, 0]) {
        [self lX_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, 0]) {
        [self lY_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self lZ_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'alpha'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchAlpha:)];
}

- (void)alpha_ {
    [self parseRule:@selector(__alpha) withMemo:_alpha_memo];
}

- (void)__lA {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_A, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_A discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_A_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_A_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lA'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLA:)];
}

- (void)lA_ {
    [self parseRule:@selector(__lA) withMemo:_lA_memo];
}

- (void)__lB {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_B, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_B discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_B_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_B_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lB'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLB:)];
}

- (void)lB_ {
    [self parseRule:@selector(__lB) withMemo:_lB_memo];
}

- (void)__lC {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_C, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_C discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_C_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_C_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lC'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLC:)];
}

- (void)lC_ {
    [self parseRule:@selector(__lC) withMemo:_lC_memo];
}

- (void)__lD {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_D, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_D discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_D_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_D_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lD'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLD:)];
}

- (void)lD_ {
    [self parseRule:@selector(__lD) withMemo:_lD_memo];
}

- (void)__lE {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_E, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_E discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_E_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_E_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lE'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLE:)];
}

- (void)lE_ {
    [self parseRule:@selector(__lE) withMemo:_lE_memo];
}

- (void)__lF {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_F, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_F discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_F_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_F_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lF'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLF:)];
}

- (void)lF_ {
    [self parseRule:@selector(__lF) withMemo:_lF_memo];
}

- (void)__lG {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_G, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_G discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_G_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_G_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lG'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLG:)];
}

- (void)lG_ {
    [self parseRule:@selector(__lG) withMemo:_lG_memo];
}

- (void)__lH {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_H, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_H discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_H_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_H_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lH'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLH:)];
}

- (void)lH_ {
    [self parseRule:@selector(__lH) withMemo:_lH_memo];
}

- (void)__lI {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_I, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_I discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_I_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_I_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lI'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLI:)];
}

- (void)lI_ {
    [self parseRule:@selector(__lI) withMemo:_lI_memo];
}

- (void)__lJ {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_J, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_J discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_J_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_J_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lJ'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLJ:)];
}

- (void)lJ_ {
    [self parseRule:@selector(__lJ) withMemo:_lJ_memo];
}

- (void)__lK {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_K, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_K discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_K_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_K_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lK'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLK:)];
}

- (void)lK_ {
    [self parseRule:@selector(__lK) withMemo:_lK_memo];
}

- (void)__lL {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_L, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_L discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_L_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_L_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lL'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLL:)];
}

- (void)lL_ {
    [self parseRule:@selector(__lL) withMemo:_lL_memo];
}

- (void)__lM {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_M, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_M discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_M_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_M_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lM'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLM:)];
}

- (void)lM_ {
    [self parseRule:@selector(__lM) withMemo:_lM_memo];
}

- (void)__lN {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_N, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_N discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_N_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_N_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lN'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLN:)];
}

- (void)lN_ {
    [self parseRule:@selector(__lN) withMemo:_lN_memo];
}

- (void)__lO {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_O, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_O discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_O_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_O_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lO'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLO:)];
}

- (void)lO_ {
    [self parseRule:@selector(__lO) withMemo:_lO_memo];
}

- (void)__lP {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_P, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_P discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_P_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_P_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lP'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLP:)];
}

- (void)lP_ {
    [self parseRule:@selector(__lP) withMemo:_lP_memo];
}

- (void)__lQ {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_Q, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_Q discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_Q_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_Q_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lQ'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLQ:)];
}

- (void)lQ_ {
    [self parseRule:@selector(__lQ) withMemo:_lQ_memo];
}

- (void)__lR {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_R, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_R discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_R_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_R_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lR'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLR:)];
}

- (void)lR_ {
    [self parseRule:@selector(__lR) withMemo:_lR_memo];
}

- (void)__lS {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_S_TITLE, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_S_TITLE discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_S, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_S discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lS'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLS:)];
}

- (void)lS_ {
    [self parseRule:@selector(__lS) withMemo:_lS_memo];
}

- (void)__lT {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_T, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_T discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_T_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_T_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lT'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLT:)];
}

- (void)lT_ {
    [self parseRule:@selector(__lT) withMemo:_lT_memo];
}

- (void)__lU {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_U, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_U discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_U_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_U_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lU'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLU:)];
}

- (void)lU_ {
    [self parseRule:@selector(__lU) withMemo:_lU_memo];
}

- (void)__lV {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_V, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_V discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_V_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_V_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lV'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLV:)];
}

- (void)lV_ {
    [self parseRule:@selector(__lV) withMemo:_lV_memo];
}

- (void)__lW {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_W, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_W discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_W_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_W_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lW'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLW:)];
}

- (void)lW_ {
    [self parseRule:@selector(__lW) withMemo:_lW_memo];
}

- (void)__lX {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_X, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_X discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_X_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_X_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lX'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLX:)];
}

- (void)lX_ {
    [self parseRule:@selector(__lX) withMemo:_lX_memo];
}

- (void)__lY {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_Y, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_Y discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_Y_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_Y_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lY'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLY:)];
}

- (void)lY_ {
    [self parseRule:@selector(__lY) withMemo:_lY_memo];
}

- (void)__lZ {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_Z, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_Z discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_Z_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'lZ'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchLZ:)];
}

- (void)lZ_ {
    [self parseRule:@selector(__lZ) withMemo:_lZ_memo];
}

- (void)__digit {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_D0, 0]) {
        [self d0_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_D1, 0]) {
        [self d1_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_D2, 0]) {
        [self d2_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_D3, 0]) {
        [self d3_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_D4, 0]) {
        [self d4_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_D5, 0]) {
        [self d5_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_D6, 0]) {
        [self d6_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_D7, 0]) {
        [self d7_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_D8, 0]) {
        [self d8_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_D9, 0]) {
        [self d9_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'digit'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchDigit:)];
}

- (void)digit_ {
    [self parseRule:@selector(__digit) withMemo:_digit_memo];
}

- (void)__d0 {
    
    [self match:ICALPARSER_TOKEN_KIND_D0 discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchD0:)];
}

- (void)d0_ {
    [self parseRule:@selector(__d0) withMemo:_d0_memo];
}

- (void)__d1 {
    
    [self match:ICALPARSER_TOKEN_KIND_D1 discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchD1:)];
}

- (void)d1_ {
    [self parseRule:@selector(__d1) withMemo:_d1_memo];
}

- (void)__d2 {
    
    [self match:ICALPARSER_TOKEN_KIND_D2 discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchD2:)];
}

- (void)d2_ {
    [self parseRule:@selector(__d2) withMemo:_d2_memo];
}

- (void)__d3 {
    
    [self match:ICALPARSER_TOKEN_KIND_D3 discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchD3:)];
}

- (void)d3_ {
    [self parseRule:@selector(__d3) withMemo:_d3_memo];
}

- (void)__d4 {
    
    [self match:ICALPARSER_TOKEN_KIND_D4 discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchD4:)];
}

- (void)d4_ {
    [self parseRule:@selector(__d4) withMemo:_d4_memo];
}

- (void)__d5 {
    
    [self match:ICALPARSER_TOKEN_KIND_D5 discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchD5:)];
}

- (void)d5_ {
    [self parseRule:@selector(__d5) withMemo:_d5_memo];
}

- (void)__d6 {
    
    [self match:ICALPARSER_TOKEN_KIND_D6 discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchD6:)];
}

- (void)d6_ {
    [self parseRule:@selector(__d6) withMemo:_d6_memo];
}

- (void)__d7 {
    
    [self match:ICALPARSER_TOKEN_KIND_D7 discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchD7:)];
}

- (void)d7_ {
    [self parseRule:@selector(__d7) withMemo:_d7_memo];
}

- (void)__d8 {
    
    [self match:ICALPARSER_TOKEN_KIND_D8 discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchD8:)];
}

- (void)d8_ {
    [self parseRule:@selector(__d8) withMemo:_d8_memo];
}

- (void)__d9 {
    
    [self match:ICALPARSER_TOKEN_KIND_D9 discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchD9:)];
}

- (void)d9_ {
    [self parseRule:@selector(__d9) withMemo:_d9_memo];
}

- (void)__altrepparam {
    
    [self match:ICALPARSER_TOKEN_KIND_ALTREP discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
    [self uri_]; 
    [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchAltrepparam:)];
}

- (void)altrepparam_ {
    [self parseRule:@selector(__altrepparam) withMemo:_altrepparam_memo];
}

- (void)__audioprop {
    
    do {
        if ([self predicts:ICALPARSER_TOKEN_KIND_ACTION, 0]) {
            [self action_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_TRIGGER, 0]) {
            [self trigger_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_DURATION, 0]) {
            [self duration_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_REPEAT, 0]) {
            [self repeat_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_ATTACH, ICALPARSER_TOKEN_KIND_SEMI_COLON, 0]) {
            [self attach_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
            [self xprop_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
            [self ianaprop_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'audioprop'."];
        }
    } while ([self speculate:^{ if ([self predicts:ICALPARSER_TOKEN_KIND_ACTION, 0]) {[self action_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_TRIGGER, 0]) {[self trigger_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DURATION, 0]) {[self duration_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_REPEAT, 0]) {[self repeat_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_ATTACH, ICALPARSER_TOKEN_KIND_SEMI_COLON, 0]) {[self attach_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {[self xprop_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {[self ianaprop_]; } else {[self raise:@"No viable alternative found in rule 'audioprop'."];}}]);

    [self fireDelegateSelector:@selector(parser:didMatchAudioprop:)];
}

- (void)audioprop_ {
    [self parseRule:@selector(__audioprop) withMemo:_audioprop_memo];
}

- (void)__bslash {
    
    [self match:ICALPARSER_TOKEN_KIND_BSLASH discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchBslash:)];
}

- (void)bslash_ {
    [self parseRule:@selector(__bslash) withMemo:_bslash_memo];
}

- (void)__cnparam {
    
    [self match:ICALPARSER_TOKEN_KIND_CN discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    [self paramvalue_]; 

    [self fireDelegateSelector:@selector(parser:didMatchCnparam:)];
}

- (void)cnparam_ {
    [self parseRule:@selector(__cnparam) withMemo:_cnparam_memo];
}

- (void)__cutypeparam {
    
    [self match:ICALPARSER_TOKEN_KIND_CUTYPE discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    if ([self predicts:ICALPARSER_TOKEN_KIND_INDIVIDUAL, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_INDIVIDUAL discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_GROUP, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_GROUP discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_RESOURCE, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_RESOURCE discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_ROOM, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_ROOM discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_UNKNOWN, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_UNKNOWN discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
        [self xname_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self ianatoken_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'cutypeparam'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchCutypeparam:)];
}

- (void)cutypeparam_ {
    [self parseRule:@selector(__cutypeparam) withMemo:_cutypeparam_memo];
}

- (void)__dispprop {
    
    do {
        if ([self predicts:ICALPARSER_TOKEN_KIND_ACTION, 0]) {
            [self action_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_DESCRIPTION, 0]) {
            [self description_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_TRIGGER, 0]) {
            [self trigger_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_DURATION, 0]) {
            [self duration_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_REPEAT, 0]) {
            [self repeat_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
            [self xprop_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
            [self ianaprop_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'dispprop'."];
        }
    } while ([self speculate:^{ if ([self predicts:ICALPARSER_TOKEN_KIND_ACTION, 0]) {[self action_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DESCRIPTION, 0]) {[self description_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_TRIGGER, 0]) {[self trigger_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DURATION, 0]) {[self duration_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_REPEAT, 0]) {[self repeat_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {[self xprop_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {[self ianaprop_]; } else {[self raise:@"No viable alternative found in rule 'dispprop'."];}}]);

    [self fireDelegateSelector:@selector(parser:didMatchDispprop:)];
}

- (void)dispprop_ {
    [self parseRule:@selector(__dispprop) withMemo:_dispprop_memo];
}

- (void)__delfromparam {
    
    [self match:ICALPARSER_TOKEN_KIND_DELEGATED_FROM discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
    [self caladdress_]; 
    [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; [self caladdress_]; [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
        [self caladdress_]; 
        [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchDelfromparam:)];
}

- (void)delfromparam_ {
    [self parseRule:@selector(__delfromparam) withMemo:_delfromparam_memo];
}

- (void)__deltoparam {
    
    [self match:ICALPARSER_TOKEN_KIND_DELEGATED_TO discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
    [self caladdress_]; 
    [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; [self caladdress_]; [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
        [self caladdress_]; 
        [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchDeltoparam:)];
}

- (void)deltoparam_ {
    [self parseRule:@selector(__deltoparam) withMemo:_deltoparam_memo];
}

- (void)__dirparam {
    
    [self match:ICALPARSER_TOKEN_KIND_DIR discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
    [self uri_]; 
    [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchDirparam:)];
}

- (void)dirparam_ {
    [self parseRule:@selector(__dirparam) withMemo:_dirparam_memo];
}

- (void)__emailprop {
    
    do {
        if ([self predicts:ICALPARSER_TOKEN_KIND_ACTION, 0]) {
            [self action_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_DESCRIPTION, 0]) {
            [self description_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_TRIGGER, 0]) {
            [self trigger_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_SUMMARY, 0]) {
            [self summary_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_ATTENDEE, 0]) {
            [self attendee_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_DURATION, 0]) {
            [self duration_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_REPEAT, 0]) {
            [self repeat_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_ATTACH, ICALPARSER_TOKEN_KIND_SEMI_COLON, 0]) {
            [self attach_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
            [self xprop_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
            [self ianaprop_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'emailprop'."];
        }
    } while ([self speculate:^{ if ([self predicts:ICALPARSER_TOKEN_KIND_ACTION, 0]) {[self action_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DESCRIPTION, 0]) {[self description_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_TRIGGER, 0]) {[self trigger_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_SUMMARY, 0]) {[self summary_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_ATTENDEE, 0]) {[self attendee_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DURATION, 0]) {[self duration_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_REPEAT, 0]) {[self repeat_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_ATTACH, ICALPARSER_TOKEN_KIND_SEMI_COLON, 0]) {[self attach_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {[self xprop_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {[self ianaprop_]; } else {[self raise:@"No viable alternative found in rule 'emailprop'."];}}]);

    [self fireDelegateSelector:@selector(parser:didMatchEmailprop:)];
}

- (void)emailprop_ {
    [self parseRule:@selector(__emailprop) withMemo:_emailprop_memo];
}

- (void)__action {
    
    [self match:ICALPARSER_TOKEN_KIND_ACTION discard:NO]; 
    [self actionparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self actionvalue_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchAction:)];
}

- (void)action_ {
    [self parseRule:@selector(__action) withMemo:_action_memo];
}

- (void)__actionparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchActionparam:)];
}

- (void)actionparam_ {
    [self parseRule:@selector(__actionparam) withMemo:_actionparam_memo];
}

- (void)__actionvalue {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_AUDIO, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_AUDIO discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_DISPLAY, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_DISPLAY discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_EMAIL, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_EMAIL discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self ianatoken_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
        [self xname_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'actionvalue'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchActionvalue:)];
}

- (void)actionvalue_ {
    [self parseRule:@selector(__actionvalue) withMemo:_actionvalue_memo];
}

- (void)__attach {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_ATTACH, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_ATTACH discard:NO]; 
        [self attachparam_]; 
        [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
        [self uri_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_SEMI_COLON, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_ENCODING discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_BASE64 discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_BINARY discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
        [self binary_]; 
        [self crlf_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'attach'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchAttach:)];
}

- (void)attach_ {
    [self parseRule:@selector(__attach) withMemo:_attach_memo];
}

- (void)__attachparam {
    
    if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self fmttypeparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self fmttypeparam_]; 
    } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'attachparam'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchAttachparam:)];
}

- (void)attachparam_ {
    [self parseRule:@selector(__attachparam) withMemo:_attachparam_memo];
}

- (void)__attendee {
    
    [self match:ICALPARSER_TOKEN_KIND_ATTENDEE discard:NO]; 
    [self attparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self caladdress_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchAttendee:)];
}

- (void)attendee_ {
    [self parseRule:@selector(__attendee) withMemo:_attendee_memo];
}

- (void)__attparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self cutypeparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self cutypeparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self memberparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self memberparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self roleparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self roleparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self partstatparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self partstatparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self rsvpparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self rsvpparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self deltoparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self deltoparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self delfromparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self delfromparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self sentbyparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self sentbyparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self cnparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self cnparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self dirparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self dirparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'attparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self cutypeparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self cutypeparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self memberparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self memberparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self roleparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self roleparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self partstatparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self partstatparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self rsvpparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self rsvpparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self deltoparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self deltoparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self delfromparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self delfromparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self sentbyparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self sentbyparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self cnparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self cnparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self dirparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self dirparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self languageparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'attparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchAttparam:)];
}

- (void)attparam_ {
    [self parseRule:@selector(__attparam) withMemo:_attparam_memo];
}

- (void)__binary {
    
    while ([self predicts:TOKEN_KIND_BUILTIN_ANY, 0]) {
        [self matchAny:NO]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchBinary:)];
}

- (void)binary_ {
    [self parseRule:@selector(__binary) withMemo:_binary_memo];
}

- (void)__caladdress {
    
    [self uri_]; 

    [self fireDelegateSelector:@selector(parser:didMatchCaladdress:)];
}

- (void)caladdress_ {
    [self parseRule:@selector(__caladdress) withMemo:_caladdress_memo];
}

- (void)__calprops {
    
    while ([self speculate:^{ if ([self predicts:ICALPARSER_TOKEN_KIND_PRODID, 0]) {[self prodid_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_VERSION, 0]) {[self version_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_CALSCALE, 0]) {[self calscale_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_METHOD, 0]) {[self method_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {[self xprop_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {[self ianaprop_]; } else {[self raise:@"No viable alternative found in rule 'calprops'."];}}]) {
        if ([self predicts:ICALPARSER_TOKEN_KIND_PRODID, 0]) {
            [self prodid_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_VERSION, 0]) {
            [self version_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_CALSCALE, 0]) {
            [self calscale_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_METHOD, 0]) {
            [self method_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
            [self xprop_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
            [self ianaprop_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'calprops'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchCalprops:)];
}

- (void)calprops_ {
    [self parseRule:@selector(__calprops) withMemo:_calprops_memo];
}

- (void)__categories {
    
    [self match:ICALPARSER_TOKEN_KIND_CATEGORIES discard:NO]; 
    [self catparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self text_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self text_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self text_]; 
    }
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchCategories:)];
}

- (void)categories_ {
    [self parseRule:@selector(__categories) withMemo:_categories_memo];
}

- (void)__catparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'catparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self languageparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'catparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchCatparam:)];
}

- (void)catparam_ {
    [self parseRule:@selector(__catparam) withMemo:_catparam_memo];
}

- (void)__calscale {
    
    [self match:ICALPARSER_TOKEN_KIND_CALSCALE discard:NO]; 
    [self calparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self calvalue_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchCalscale:)];
}

- (void)calscale_ {
    [self parseRule:@selector(__calscale) withMemo:_calscale_memo];
}

- (void)__calparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchCalparam:)];
}

- (void)calparam_ {
    [self parseRule:@selector(__calparam) withMemo:_calparam_memo];
}

- (void)__calvalue {
    
    [self match:ICALPARSER_TOKEN_KIND_CALVALUE discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchCalvalue:)];
}

- (void)calvalue_ {
    [self parseRule:@selector(__calvalue) withMemo:_calvalue_memo];
}

- (void)__class {
    
    [self match:ICALPARSER_TOKEN_KIND_CLASS discard:NO]; 
    [self classparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self classvalue_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchClass:)];
}

- (void)class_ {
    [self parseRule:@selector(__class) withMemo:_class_memo];
}

- (void)__classparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchClassparam:)];
}

- (void)classparam_ {
    [self parseRule:@selector(__classparam) withMemo:_classparam_memo];
}

- (void)__classvalue {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_PUBLIC, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_PUBLIC discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_PRIVATE, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_PRIVATE discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_CONFIDENTIAL, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_CONFIDENTIAL discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self ianatoken_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
        [self xname_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'classvalue'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchClassvalue:)];
}

- (void)classvalue_ {
    [self parseRule:@selector(__classvalue) withMemo:_classvalue_memo];
}

- (void)__comment {
    
    [self match:ICALPARSER_TOKEN_KIND_COMMENT discard:NO]; 
    [self commparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self text_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchComment:)];
}

- (void)comment_ {
    [self parseRule:@selector(__comment) withMemo:_comment_memo];
}

- (void)__component {
    
    while ([self speculate:^{ [self todoc_]; }]) {
        [self todoc_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchComponent:)];
}

- (void)component_ {
    [self parseRule:@selector(__component) withMemo:_component_memo];
}

- (void)__commparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'commparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self altrepparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self languageparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'commparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchCommparam:)];
}

- (void)commparam_ {
    [self parseRule:@selector(__commparam) withMemo:_commparam_memo];
}

- (void)__completed {
    
    [self match:ICALPARSER_TOKEN_KIND_COMPLETED discard:NO]; 
    [self compparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self datetime_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchCompleted:)];
}

- (void)completed_ {
    [self parseRule:@selector(__completed) withMemo:_completed_memo];
}

- (void)__compparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchCompparam:)];
}

- (void)compparam_ {
    [self parseRule:@selector(__compparam) withMemo:_compparam_memo];
}

- (void)__contact {
    
    [self match:ICALPARSER_TOKEN_KIND_CONTACT discard:NO]; 
    [self contparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self text_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchContact:)];
}

- (void)contact_ {
    [self parseRule:@selector(__contact) withMemo:_contact_memo];
}

- (void)__contentline {
    
    [self name_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self param_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self param_]; 
    }
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self value_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchContentline:)];
}

- (void)contentline_ {
    [self parseRule:@selector(__contentline) withMemo:_contentline_memo];
}

- (void)__contparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'contparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self altrepparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self languageparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'contparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchContparam:)];
}

- (void)contparam_ {
    [self parseRule:@selector(__contparam) withMemo:_contparam_memo];
}

- (void)__created {
    
    [self match:ICALPARSER_TOKEN_KIND_CREATED discard:NO]; 
    [self creaparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self datetime_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchCreated:)];
}

- (void)created_ {
    [self parseRule:@selector(__created) withMemo:_created_memo];
}

- (void)__creaparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchCreaparam:)];
}

- (void)creaparam_ {
    [self parseRule:@selector(__creaparam) withMemo:_creaparam_memo];
}

- (void)__date {
    
    [self datevalue_]; 

    [self fireDelegateSelector:@selector(parser:didMatchDate:)];
}

- (void)date_ {
    [self parseRule:@selector(__date) withMemo:_date_memo];
}

- (void)__datevalue {
    
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchDatevalue:)];
}

- (void)datevalue_ {
    [self parseRule:@selector(__datevalue) withMemo:_datevalue_memo];
}

- (void)__datefullyear {
    
    [self matchNumber:NO]; 
    [self matchNumber:NO]; 
    [self matchNumber:NO]; 
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchDatefullyear:)];
}

- (void)datefullyear_ {
    [self parseRule:@selector(__datefullyear) withMemo:_datefullyear_memo];
}

- (void)__datemonth {
    
    [self matchNumber:NO]; 
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchDatemonth:)];
}

- (void)datemonth_ {
    [self parseRule:@selector(__datemonth) withMemo:_datemonth_memo];
}

- (void)__datemday {
    
    [self matchNumber:NO]; 
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchDatemday:)];
}

- (void)datemday_ {
    [self parseRule:@selector(__datemday) withMemo:_datemday_memo];
}

- (void)__datetime {
    
    [self matchNumber:NO]; 
    [self matchWord:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchDatetime:)];
}

- (void)datetime_ {
    [self parseRule:@selector(__datetime) withMemo:_datetime_memo];
}

- (void)__description {
    
    [self match:ICALPARSER_TOKEN_KIND_DESCRIPTION discard:NO]; 
    [self descparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self text_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchDescription:)];
}

- (void)description_ {
    [self parseRule:@selector(__description) withMemo:_description_memo];
}

- (void)__descparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'descparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self altrepparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self languageparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'descparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchDescparam:)];
}

- (void)descparam_ {
    [self parseRule:@selector(__descparam) withMemo:_descparam_memo];
}

- (void)__dtstamp {
    
    [self match:ICALPARSER_TOKEN_KIND_DTSTAMP discard:NO]; 
    [self stmparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self datetime_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchDtstamp:)];
}

- (void)dtstamp_ {
    [self parseRule:@selector(__dtstamp) withMemo:_dtstamp_memo];
}

- (void)__stmparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchStmparam:)];
}

- (void)stmparam_ {
    [self parseRule:@selector(__stmparam) withMemo:_stmparam_memo];
}

- (void)__dtstart {
    
    [self match:ICALPARSER_TOKEN_KIND_DTSTART discard:NO]; 
    [self dtstparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self dtstval_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchDtstart:)];
}

- (void)dtstart_ {
    [self parseRule:@selector(__dtstart) withMemo:_dtstart_memo];
}

- (void)__dtstparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else {[self raise:@"No viable alternative found in rule 'dtstparam'."];}}]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else {[self raise:@"No viable alternative found in rule 'dtstparam'."];}} else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'dtstparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else {[self raise:@"No viable alternative found in rule 'dtstparam'."];}}]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {
                [self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; 
            } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {
                [self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; 
            } else {
                [self raise:@"No viable alternative found in rule 'dtstparam'."];
            }
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self tzidparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'dtstparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchDtstparam:)];
}

- (void)dtstparam_ {
    [self parseRule:@selector(__dtstparam) withMemo:_dtstparam_memo];
}

- (void)__dtstval {
    
    if ([self speculate:^{ [self datetime_]; }]) {
        [self datetime_]; 
    } else if ([self speculate:^{ [self date_]; }]) {
        [self date_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'dtstval'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchDtstval:)];
}

- (void)dtstval_ {
    [self parseRule:@selector(__dtstval) withMemo:_dtstval_memo];
}

- (void)__dtend {
    
    [self match:ICALPARSER_TOKEN_KIND_DTEND discard:NO]; 
    [self dtendparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self dtendval_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchDtend:)];
}

- (void)dtend_ {
    [self parseRule:@selector(__dtend) withMemo:_dtend_memo];
}

- (void)__dtendparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else {[self raise:@"No viable alternative found in rule 'dtendparam'."];}}]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else {[self raise:@"No viable alternative found in rule 'dtendparam'."];}} else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'dtendparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else {[self raise:@"No viable alternative found in rule 'dtendparam'."];}}]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {
                [self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; 
            } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {
                [self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; 
            } else {
                [self raise:@"No viable alternative found in rule 'dtendparam'."];
            }
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self tzidparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'dtendparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchDtendparam:)];
}

- (void)dtendparam_ {
    [self parseRule:@selector(__dtendparam) withMemo:_dtendparam_memo];
}

- (void)__dtendval {
    
    if ([self speculate:^{ [self datetime_]; }]) {
        [self datetime_]; 
    } else if ([self speculate:^{ [self date_]; }]) {
        [self date_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'dtendval'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchDtendval:)];
}

- (void)dtendval_ {
    [self parseRule:@selector(__dtendval) withMemo:_dtendval_memo];
}

- (void)__due {
    
    [self match:ICALPARSER_TOKEN_KIND_DUE discard:NO]; 
    [self dueparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self dueval_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchDue:)];
}

- (void)due_ {
    [self parseRule:@selector(__due) withMemo:_due_memo];
}

- (void)__dueparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else {[self raise:@"No viable alternative found in rule 'dueparam'."];}}]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else {[self raise:@"No viable alternative found in rule 'dueparam'."];}} else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'dueparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else {[self raise:@"No viable alternative found in rule 'dueparam'."];}}]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {
                [self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; 
            } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {
                [self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; 
            } else {
                [self raise:@"No viable alternative found in rule 'dueparam'."];
            }
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self tzidparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'dueparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchDueparam:)];
}

- (void)dueparam_ {
    [self parseRule:@selector(__dueparam) withMemo:_dueparam_memo];
}

- (void)__dueval {
    
    if ([self speculate:^{ [self datetime_]; }]) {
        [self datetime_]; 
    } else if ([self speculate:^{ [self date_]; }]) {
        [self date_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'dueval'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchDueval:)];
}

- (void)dueval_ {
    [self parseRule:@selector(__dueval) withMemo:_dueval_memo];
}

- (void)__durvalue {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_PLUS, 0]) {
        while ([self predicts:ICALPARSER_TOKEN_KIND_PLUS, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_PLUS discard:NO]; 
        }
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_MINUS, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_MINUS discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'durvalue'."];
    }
    [self match:ICALPARSER_TOKEN_KIND_P discard:NO]; 
    if ([self speculate:^{ [self durdate_]; }]) {
        [self durdate_]; 
    } else if ([self speculate:^{ [self durtime_]; }]) {
        [self durtime_]; 
    } else if ([self speculate:^{ [self durweek_]; }]) {
        [self durweek_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'durvalue'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchDurvalue:)];
}

- (void)durvalue_ {
    [self parseRule:@selector(__durvalue) withMemo:_durvalue_memo];
}

- (void)__durdate {
    
    [self durday_]; 
    while ([self speculate:^{ [self durtime_]; }]) {
        [self durtime_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchDurdate:)];
}

- (void)durdate_ {
    [self parseRule:@selector(__durdate) withMemo:_durdate_memo];
}

- (void)__durtime {
    
    [self match:ICALPARSER_TOKEN_KIND_T discard:NO]; 
    if ([self speculate:^{ [self durhour_]; }]) {
        [self durhour_]; 
    } else if ([self speculate:^{ [self durminute_]; }]) {
        [self durminute_]; 
    } else if ([self speculate:^{ [self dursecond_]; }]) {
        [self dursecond_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'durtime'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchDurtime:)];
}

- (void)durtime_ {
    [self parseRule:@selector(__durtime) withMemo:_durtime_memo];
}

- (void)__durweek {
    
    [self matchNumber:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_W discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchDurweek:)];
}

- (void)durweek_ {
    [self parseRule:@selector(__durweek) withMemo:_durweek_memo];
}

- (void)__durhour {
    
    [self matchNumber:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_H discard:NO]; 
    while ([self speculate:^{ [self durminute_]; }]) {
        [self durminute_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchDurhour:)];
}

- (void)durhour_ {
    [self parseRule:@selector(__durhour) withMemo:_durhour_memo];
}

- (void)__durminute {
    
    [self matchNumber:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_M discard:NO]; 
    while ([self speculate:^{ [self dursecond_]; }]) {
        [self dursecond_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchDurminute:)];
}

- (void)durminute_ {
    [self parseRule:@selector(__durminute) withMemo:_durminute_memo];
}

- (void)__dursecond {
    
    [self matchNumber:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_S_TITLE discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchDursecond:)];
}

- (void)dursecond_ {
    [self parseRule:@selector(__dursecond) withMemo:_dursecond_memo];
}

- (void)__durday {
    
    [self matchNumber:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_D discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchDurday:)];
}

- (void)durday_ {
    [self parseRule:@selector(__durday) withMemo:_durday_memo];
}

- (void)__duration {
    
    [self match:ICALPARSER_TOKEN_KIND_DURATION discard:NO]; 
    [self durparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self durvalue_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchDuration:)];
}

- (void)duration_ {
    [self parseRule:@selector(__duration) withMemo:_duration_memo];
}

- (void)__durparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchDurparam:)];
}

- (void)durparam_ {
    [self parseRule:@selector(__durparam) withMemo:_durparam_memo];
}

- (void)__encodingparam {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_ENCODING, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_ENCODING discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_8BIT discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_BASE64, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_BASE64 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'encodingparam'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchEncodingparam:)];
}

- (void)encodingparam_ {
    [self parseRule:@selector(__encodingparam) withMemo:_encodingparam_memo];
}

- (void)__exdate {
    
    [self match:ICALPARSER_TOKEN_KIND_EXDATE discard:NO]; 
    [self exdtparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self exdtval_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self exdtval_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self exdtval_]; 
    }
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchExdate:)];
}

- (void)exdate_ {
    [self parseRule:@selector(__exdate) withMemo:_exdate_memo];
}

- (void)__exdtparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else {[self raise:@"No viable alternative found in rule 'exdtparam'."];}}]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else {[self raise:@"No viable alternative found in rule 'exdtparam'."];}} else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'exdtparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else {[self raise:@"No viable alternative found in rule 'exdtparam'."];}}]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {
                [self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; 
            } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {
                [self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; 
            } else {
                [self raise:@"No viable alternative found in rule 'exdtparam'."];
            }
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self tzidparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'exdtparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchExdtparam:)];
}

- (void)exdtparam_ {
    [self parseRule:@selector(__exdtparam) withMemo:_exdtparam_memo];
}

- (void)__exdtval {
    
    if ([self speculate:^{ [self datetime_]; }]) {
        [self datetime_]; 
    } else if ([self speculate:^{ [self date_]; }]) {
        [self date_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'exdtval'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchExdtval:)];
}

- (void)exdtval_ {
    [self parseRule:@selector(__exdtval) withMemo:_exdtval_memo];
}

- (void)__fbtypeparam {
    
    [self match:ICALPARSER_TOKEN_KIND_FBTYPE discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    if ([self predicts:ICALPARSER_TOKEN_KIND_FREE, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_FREE discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_BUSY, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_BUSY discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_BUSY_UNAVAILABLE, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_BUSY_UNAVAILABLE discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_BUSY_TENTATIVE, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_BUSY_TENTATIVE discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
        [self xname_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self ianatoken_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'fbtypeparam'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchFbtypeparam:)];
}

- (void)fbtypeparam_ {
    [self parseRule:@selector(__fbtypeparam) withMemo:_fbtypeparam_memo];
}

- (void)__fmttypeparam {
    
    [self match:ICALPARSER_TOKEN_KIND_FMTTYPE discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    [self typename_]; 
    [self match:ICALPARSER_TOKEN_KIND_PIPE discard:NO]; 
    [self subtypename_]; 

    [self fireDelegateSelector:@selector(parser:didMatchFmttypeparam:)];
}

- (void)fmttypeparam_ {
    [self parseRule:@selector(__fmttypeparam) withMemo:_fmttypeparam_memo];
}

- (void)__typename {
    
    [self regname_]; 

    [self fireDelegateSelector:@selector(parser:didMatchTypename:)];
}

- (void)typename_ {
    [self parseRule:@selector(__typename) withMemo:_typename_memo];
}

- (void)__subtypename {
    
    [self regname_]; 

    [self fireDelegateSelector:@selector(parser:didMatchSubtypename:)];
}

- (void)subtypename_ {
    [self parseRule:@selector(__subtypename) withMemo:_subtypename_memo];
}

- (void)__regname {
    
    while ([self predicts:ICALPARSER_TOKEN_KIND_AMPERSAND, ICALPARSER_TOKEN_KIND_BANG, ICALPARSER_TOKEN_KIND_CARET, ICALPARSER_TOKEN_KIND_DOLLAR, ICALPARSER_TOKEN_KIND_DOT, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_PLUS, ICALPARSER_TOKEN_KIND_POUND, ICALPARSER_TOKEN_KIND_UNDERSCORE, TOKEN_KIND_BUILTIN_NUMBER, TOKEN_KIND_BUILTIN_WORD, 0]) {
        [self regnamechars_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchRegname:)];
}

- (void)regname_ {
    [self parseRule:@selector(__regname) withMemo:_regname_memo];
}

- (void)__regnamechars {
    
    if ([self predicts:TOKEN_KIND_BUILTIN_WORD, 0]) {
        [self matchWord:NO]; 
    } else if ([self predicts:TOKEN_KIND_BUILTIN_NUMBER, 0]) {
        [self matchNumber:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_BANG, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_BANG discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_POUND, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_POUND discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_DOLLAR, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_DOLLAR discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_AMPERSAND, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_AMPERSAND discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_DOT, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_DOT discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_PLUS, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_PLUS discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_MINUS, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_MINUS discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_CARET, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_CARET discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_UNDERSCORE, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_UNDERSCORE discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'regnamechars'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchRegnamechars:)];
}

- (void)regnamechars_ {
    [self parseRule:@selector(__regnamechars) withMemo:_regnamechars_memo];
}

- (void)__geo {
    
    [self match:ICALPARSER_TOKEN_KIND_GEO discard:NO]; 
    [self geoparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self geovalue_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchGeo:)];
}

- (void)geo_ {
    [self parseRule:@selector(__geo) withMemo:_geo_memo];
}

- (void)__geoparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchGeoparam:)];
}

- (void)geoparam_ {
    [self parseRule:@selector(__geoparam) withMemo:_geoparam_memo];
}

- (void)__geovalue {
    
    [self matchNumber:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchGeovalue:)];
}

- (void)geovalue_ {
    [self parseRule:@selector(__geovalue) withMemo:_geovalue_memo];
}

- (void)__ianacomp {
    
    [self match:ICALPARSER_TOKEN_KIND_BEGIN discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self ianatoken_]; 
    [self crlf_]; 
    while ([self speculate:^{ [self contentline_]; }]) {
        [self contentline_]; 
    }
    [self match:ICALPARSER_TOKEN_KIND_END discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self ianatoken_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchIanacomp:)];
}

- (void)ianacomp_ {
    [self parseRule:@selector(__ianacomp) withMemo:_ianacomp_memo];
}

- (void)__ianaprop {
    
    [self ianatoken_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self icalparameter_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self icalparameter_]; 
    }
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self value_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchIanaprop:)];
}

- (void)ianaprop_ {
    [self parseRule:@selector(__ianaprop) withMemo:_ianaprop_memo];
}

- (void)__name {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self ianatoken_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
        [self xname_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'name'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchName:)];
}

- (void)name_ {
    [self parseRule:@selector(__name) withMemo:_name_memo];
}

- (void)__ianatoken {
    
    do {
        if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
            [self alpha_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, 0]) {
            [self digit_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_MINUS, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_MINUS discard:NO]; 
        } else {
            [self raise:@"No viable alternative found in rule 'ianatoken'."];
        }
    } while ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]);

    [self fireDelegateSelector:@selector(parser:didMatchIanatoken:)];
}

- (void)ianatoken_ {
    [self parseRule:@selector(__ianatoken) withMemo:_ianatoken_memo];
}

- (void)__vendorid {
    
    do {
        if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
            [self alpha_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, 0]) {
            [self digit_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'vendorid'."];
        }
    } while ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]);

    [self fireDelegateSelector:@selector(parser:didMatchVendorid:)];
}

- (void)vendorid_ {
    [self parseRule:@selector(__vendorid) withMemo:_vendorid_memo];
}

- (void)__param {
    
    [self paramname_]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    [self paramvalue_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self paramvalue_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self paramvalue_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchParam:)];
}

- (void)param_ {
    [self parseRule:@selector(__param) withMemo:_param_memo];
}

- (void)__paramname {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self ianatoken_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
        [self xname_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'paramname'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchParamname:)];
}

- (void)paramname_ {
    [self parseRule:@selector(__paramname) withMemo:_paramname_memo];
}

- (void)__paramvalue {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_COLON, ICALPARSER_TOKEN_KIND_COMMA, ICALPARSER_TOKEN_KIND_QUOTE, ICALPARSER_TOKEN_KIND_SEMI_COLON, ICALPARSER_TOKEN_KIND__X00, ICALPARSER_TOKEN_KIND__X01, ICALPARSER_TOKEN_KIND__X02, ICALPARSER_TOKEN_KIND__X03, ICALPARSER_TOKEN_KIND__X04, ICALPARSER_TOKEN_KIND__X05, ICALPARSER_TOKEN_KIND__X06, ICALPARSER_TOKEN_KIND__X07, ICALPARSER_TOKEN_KIND__X08, ICALPARSER_TOKEN_KIND__X0A, ICALPARSER_TOKEN_KIND__X0B, ICALPARSER_TOKEN_KIND__X0C, ICALPARSER_TOKEN_KIND__X0D, ICALPARSER_TOKEN_KIND__X0E, ICALPARSER_TOKEN_KIND__X0F, ICALPARSER_TOKEN_KIND__X10, ICALPARSER_TOKEN_KIND__X11, ICALPARSER_TOKEN_KIND__X12, ICALPARSER_TOKEN_KIND__X13, ICALPARSER_TOKEN_KIND__X14, ICALPARSER_TOKEN_KIND__X15, ICALPARSER_TOKEN_KIND__X16, ICALPARSER_TOKEN_KIND__X17, ICALPARSER_TOKEN_KIND__X18, ICALPARSER_TOKEN_KIND__X19, ICALPARSER_TOKEN_KIND__X1A, ICALPARSER_TOKEN_KIND__X1B, ICALPARSER_TOKEN_KIND__X1C, ICALPARSER_TOKEN_KIND__X1D, ICALPARSER_TOKEN_KIND__X1E, ICALPARSER_TOKEN_KIND__X1F, ICALPARSER_TOKEN_KIND__X7F, 0]) {
        [self paramtext_]; 
    } else if ([self predicts:TOKEN_KIND_BUILTIN_QUOTEDSTRING, 0]) {
        [self quotedstring_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'paramvalue'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchParamvalue:)];
}

- (void)paramvalue_ {
    [self parseRule:@selector(__paramvalue) withMemo:_paramvalue_memo];
}

- (void)__paramtext {
    
    while ([self speculate:^{ [self safechar_]; }]) {
        [self safechar_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchParamtext:)];
}

- (void)paramtext_ {
    [self parseRule:@selector(__paramtext) withMemo:_paramtext_memo];
}

- (void)__value {
    
    while ([self speculate:^{ [self valuechar_]; }]) {
        [self valuechar_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchValue:)];
}

- (void)value_ {
    [self parseRule:@selector(__value) withMemo:_value_memo];
}

- (void)__qsafechar {
    
    if (![self predicts:ICALPARSER_TOKEN_KIND_QUOTE, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X00, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X01, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X02, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X03, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X04, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X05, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X06, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X07, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X08, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X0A, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X0B, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X0C, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X0D, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X0E, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X0F, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X10, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X11, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X12, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X13, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X14, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X15, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X16, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X17, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X18, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X19, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X1A, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X1B, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X1C, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X1D, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X1E, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X1F, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X7F, 0]) {
        [self match:TOKEN_KIND_BUILTIN_ANY discard:NO];
    } else {
        [self raise:@"negation test failed in qsafechar"];
    }

    [self fireDelegateSelector:@selector(parser:didMatchQsafechar:)];
}

- (void)qsafechar_ {
    [self parseRule:@selector(__qsafechar) withMemo:_qsafechar_memo];
}

- (void)__safechar {
    
    if (![self predicts:ICALPARSER_TOKEN_KIND_COLON, 0] && ![self predicts:ICALPARSER_TOKEN_KIND_COMMA, 0] && ![self predicts:ICALPARSER_TOKEN_KIND_QUOTE, 0] && ![self predicts:ICALPARSER_TOKEN_KIND_SEMI_COLON, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X00, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X01, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X02, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X03, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X04, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X05, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X06, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X07, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X08, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X0A, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X0B, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X0C, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X0D, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X0E, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X0F, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X10, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X11, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X12, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X13, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X14, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X15, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X16, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X17, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X18, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X19, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X1A, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X1B, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X1C, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X1D, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X1E, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X1F, 0] && ![self predicts:ICALPARSER_TOKEN_KIND__X7F, 0]) {
        [self match:TOKEN_KIND_BUILTIN_ANY discard:NO];
    } else {
        [self raise:@"negation test failed in safechar"];
    }

    [self fireDelegateSelector:@selector(parser:didMatchSafechar:)];
}

- (void)safechar_ {
    [self parseRule:@selector(__safechar) withMemo:_safechar_memo];
}

- (void)__valuechar {
    
    if (![self speculate:^{ if ([self predicts:ICALPARSER_TOKEN_KIND__X00, ICALPARSER_TOKEN_KIND__X01, ICALPARSER_TOKEN_KIND__X02, ICALPARSER_TOKEN_KIND__X03, ICALPARSER_TOKEN_KIND__X04, ICALPARSER_TOKEN_KIND__X05, ICALPARSER_TOKEN_KIND__X06, ICALPARSER_TOKEN_KIND__X07, ICALPARSER_TOKEN_KIND__X08, ICALPARSER_TOKEN_KIND__X0A, ICALPARSER_TOKEN_KIND__X0B, ICALPARSER_TOKEN_KIND__X0C, ICALPARSER_TOKEN_KIND__X0D, ICALPARSER_TOKEN_KIND__X0E, ICALPARSER_TOKEN_KIND__X0F, ICALPARSER_TOKEN_KIND__X10, ICALPARSER_TOKEN_KIND__X11, ICALPARSER_TOKEN_KIND__X12, ICALPARSER_TOKEN_KIND__X13, ICALPARSER_TOKEN_KIND__X14, ICALPARSER_TOKEN_KIND__X15, ICALPARSER_TOKEN_KIND__X16, ICALPARSER_TOKEN_KIND__X17, ICALPARSER_TOKEN_KIND__X18, ICALPARSER_TOKEN_KIND__X19, ICALPARSER_TOKEN_KIND__X1A, ICALPARSER_TOKEN_KIND__X1B, ICALPARSER_TOKEN_KIND__X1C, ICALPARSER_TOKEN_KIND__X1D, ICALPARSER_TOKEN_KIND__X1E, ICALPARSER_TOKEN_KIND__X1F, ICALPARSER_TOKEN_KIND__X7F, 0]) {[self control_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_BSLASH, 0]) {[self escapedchar_]; } else {[self raise:@"No viable alternative found in rule 'valuechar'."];}}]) {
        [self match:TOKEN_KIND_BUILTIN_ANY discard:NO];
    } else {
        [self raise:@"negation test failed in valuechar"];
    }

    [self fireDelegateSelector:@selector(parser:didMatchValuechar:)];
}

- (void)valuechar_ {
    [self parseRule:@selector(__valuechar) withMemo:_valuechar_memo];
}

- (void)__nonusascii {
    
    while ([self speculate:^{ if ([self predicts:TOKEN_KIND_BUILTIN_WORD, 0]) {[self matchWord:NO]; } else if ([self predicts:TOKEN_KIND_BUILTIN_NUMBER, 0]) {[self matchNumber:NO]; [self matchSymbol:NO]; } else {[self raise:@"No viable alternative found in rule 'nonusascii'."];}}]) {
        if ([self predicts:TOKEN_KIND_BUILTIN_WORD, 0]) {
            [self matchWord:NO]; 
        } else if ([self predicts:TOKEN_KIND_BUILTIN_NUMBER, 0]) {
            [self matchNumber:NO]; 
            [self matchSymbol:NO]; 
        } else {
            [self raise:@"No viable alternative found in rule 'nonusascii'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchNonusascii:)];
}

- (void)nonusascii_ {
    [self parseRule:@selector(__nonusascii) withMemo:_nonusascii_memo];
}

- (void)__control {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND__X00, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X00 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X01, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X01 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X02, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X02 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X03, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X03 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X04, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X04 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X05, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X05 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X06, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X06 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X07, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X07 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X08, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X08 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X0A, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X0A discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X0B, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X0B discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X0C, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X0C discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X0D, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X0D discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X0E, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X0E discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X0F, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X0F discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X10, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X10 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X11, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X11 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X12, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X12 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X13, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X13 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X14, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X14 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X15, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X15 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X16, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X16 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X17, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X17 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X18, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X18 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X19, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X19 discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X1A, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X1A discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X1B, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X1B discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X1C, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X1C discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X1D, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X1D discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X1E, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X1E discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X1F, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X1F discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__X7F, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__X7F discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'control'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchControl:)];
}

- (void)control_ {
    [self parseRule:@selector(__control) withMemo:_control_memo];
}

- (void)__quotedstring {
    
    [self matchQuotedString:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchQuotedstring:)];
}

- (void)quotedstring_ {
    [self parseRule:@selector(__quotedstring) withMemo:_quotedstring_memo];
}

- (void)__ianaparam {
    
    [self ianatoken_]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    [self paramvalue_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self paramvalue_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self paramvalue_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchIanaparam:)];
}

- (void)ianaparam_ {
    [self parseRule:@selector(__ianaparam) withMemo:_ianaparam_memo];
}

- (void)__icalparameter {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_ALTREP, 0]) {
        [self altrepparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_CN, 0]) {
        [self cnparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_CUTYPE, 0]) {
        [self cutypeparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_DELEGATED_FROM, 0]) {
        [self delfromparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_DELEGATED_TO, 0]) {
        [self deltoparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_DIR, 0]) {
        [self dirparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_BASE64, ICALPARSER_TOKEN_KIND_ENCODING, 0]) {
        [self encodingparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_FMTTYPE, 0]) {
        [self fmttypeparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_FBTYPE, 0]) {
        [self fbtypeparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_LANGUAGE, 0]) {
        [self languageparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_MEMBER, 0]) {
        [self memberparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_PARTSTAT, 0]) {
        [self partstatparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_RANGE, 0]) {
        [self rangeparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_RELATED, 0]) {
        [self trigrelparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_RELTYPE, 0]) {
        [self reltypeparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_ROLE, 0]) {
        [self roleparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_RSVP, 0]) {
        [self rsvpparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_SENT_BY, 0]) {
        [self sentbyparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_TZID, 0]) {
        [self tzidparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_VALUE, 0]) {
        [self valuetypeparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self otherparam_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'icalparameter'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchIcalparameter:)];
}

- (void)icalparameter_ {
    [self parseRule:@selector(__icalparameter) withMemo:_icalparameter_memo];
}

- (void)__icalstream {
    
    [self icalobject_]; 

    [self fireDelegateSelector:@selector(parser:didMatchIcalstream:)];
}

- (void)icalstream_ {
    [self parseRule:@selector(__icalstream) withMemo:_icalstream_memo];
}

- (void)__icalbody {
    
    [self calprops_]; 
    [self component_]; 

    [self fireDelegateSelector:@selector(parser:didMatchIcalbody:)];
}

- (void)icalbody_ {
    [self parseRule:@selector(__icalbody) withMemo:_icalbody_memo];
}

- (void)__languageparam {
    
    [self match:ICALPARSER_TOKEN_KIND_LANGUAGE discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    [self language_]; 

    [self fireDelegateSelector:@selector(parser:didMatchLanguageparam:)];
}

- (void)languageparam_ {
    [self parseRule:@selector(__languageparam) withMemo:_languageparam_memo];
}

- (void)__language {
    
    while ([self predicts:TOKEN_KIND_BUILTIN_ANY, 0]) {
        [self matchAny:NO]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchLanguage:)];
}

- (void)language_ {
    [self parseRule:@selector(__language) withMemo:_language_memo];
}

- (void)__lastmod {
    
    [self match:ICALPARSER_TOKEN_KIND_LAST_MODIFIED discard:NO]; 
    [self lstparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self datetime_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchLastmod:)];
}

- (void)lastmod_ {
    [self parseRule:@selector(__lastmod) withMemo:_lastmod_memo];
}

- (void)__lstparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchLstparam:)];
}

- (void)lstparam_ {
    [self parseRule:@selector(__lstparam) withMemo:_lstparam_memo];
}

- (void)__location {
    
    [self match:ICALPARSER_TOKEN_KIND_LOCATION discard:NO]; 
    [self locparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self text_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchLocation:)];
}

- (void)location_ {
    [self parseRule:@selector(__location) withMemo:_location_memo];
}

- (void)__locparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'locparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self altrepparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self languageparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'locparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchLocparam:)];
}

- (void)locparam_ {
    [self parseRule:@selector(__locparam) withMemo:_locparam_memo];
}

- (void)__memberparam {
    
    [self match:ICALPARSER_TOKEN_KIND_MEMBER discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
    [self caladdress_]; 
    [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; [self caladdress_]; [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
        [self caladdress_]; 
        [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchMemberparam:)];
}

- (void)memberparam_ {
    [self parseRule:@selector(__memberparam) withMemo:_memberparam_memo];
}

- (void)__method {
    
    [self match:ICALPARSER_TOKEN_KIND_METHOD discard:NO]; 
    [self metparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self metvalue_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchMethod:)];
}

- (void)method_ {
    [self parseRule:@selector(__method) withMemo:_method_memo];
}

- (void)__metparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchMetparam:)];
}

- (void)metparam_ {
    [self parseRule:@selector(__metparam) withMemo:_metparam_memo];
}

- (void)__metvalue {
    
    [self ianatoken_]; 

    [self fireDelegateSelector:@selector(parser:didMatchMetvalue:)];
}

- (void)metvalue_ {
    [self parseRule:@selector(__metvalue) withMemo:_metvalue_memo];
}

- (void)__organizer {
    
    [self match:ICALPARSER_TOKEN_KIND_ORGANIZER discard:NO]; 
    [self orgparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self caladdress_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchOrganizer:)];
}

- (void)organizer_ {
    [self parseRule:@selector(__organizer) withMemo:_organizer_memo];
}

- (void)__orgparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self cnparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self cnparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self dirparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self dirparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self sentbyparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self sentbyparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'orgparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self cnparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self cnparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self dirparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self dirparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self sentbyparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self sentbyparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self languageparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'orgparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchOrgparam:)];
}

- (void)orgparam_ {
    [self parseRule:@selector(__orgparam) withMemo:_orgparam_memo];
}

- (void)__otherparam {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self ianaparam_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
        [self xparam_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'otherparam'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchOtherparam:)];
}

- (void)otherparam_ {
    [self parseRule:@selector(__otherparam) withMemo:_otherparam_memo];
}

- (void)__partstatparam {
    
    [self match:ICALPARSER_TOKEN_KIND_PARTSTAT discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    if ([self speculate:^{ [self partstatevent_]; }]) {
        [self partstatevent_]; 
    } else if ([self speculate:^{ [self partstattodo_]; }]) {
        [self partstattodo_]; 
    } else if ([self speculate:^{ [self partstatjour_]; }]) {
        [self partstatjour_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'partstatparam'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchPartstatparam:)];
}

- (void)partstatparam_ {
    [self parseRule:@selector(__partstatparam) withMemo:_partstatparam_memo];
}

- (void)__partstatevent {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_NEEDS_ACTION, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_NEEDS_ACTION discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_ACCEPTED, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_ACCEPTED discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_DECLINED, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_DECLINED discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_TENTATIVE, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_TENTATIVE discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_DELEGATED, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_DELEGATED discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
        [self xname_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self ianatoken_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'partstatevent'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchPartstatevent:)];
}

- (void)partstatevent_ {
    [self parseRule:@selector(__partstatevent) withMemo:_partstatevent_memo];
}

- (void)__partstattodo {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_NEEDS_ACTION, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_NEEDS_ACTION discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_ACCEPTED, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_ACCEPTED discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_DECLINED, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_DECLINED discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_TENTATIVE, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_TENTATIVE discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_DELEGATED, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_DELEGATED discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_COMPLETED, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_COMPLETED discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_IN_PROCESS, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_IN_PROCESS discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
        [self xname_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self ianatoken_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'partstattodo'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchPartstattodo:)];
}

- (void)partstattodo_ {
    [self parseRule:@selector(__partstattodo) withMemo:_partstattodo_memo];
}

- (void)__partstatjour {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_NEEDS_ACTION, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_NEEDS_ACTION discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_ACCEPTED, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_ACCEPTED discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_DECLINED, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_DECLINED discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
        [self xname_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self ianatoken_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'partstatjour'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchPartstatjour:)];
}

- (void)partstatjour_ {
    [self parseRule:@selector(__partstatjour) withMemo:_partstatjour_memo];
}

- (void)__percent {
    
    [self match:ICALPARSER_TOKEN_KIND_PERCENT_COMPLETE discard:NO]; 
    [self pctparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self matchNumber:NO]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchPercent:)];
}

- (void)percent_ {
    [self parseRule:@selector(__percent) withMemo:_percent_memo];
}

- (void)__period {
    
    if ([self speculate:^{ [self periodexplicit_]; }]) {
        [self periodexplicit_]; 
    } else if ([self speculate:^{ [self periodstart_]; }]) {
        [self periodstart_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'period'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchPeriod:)];
}

- (void)period_ {
    [self parseRule:@selector(__period) withMemo:_period_memo];
}

- (void)__periodexplicit {
    
    [self datetime_]; 
    [self match:ICALPARSER_TOKEN_KIND_FORWARD_SLASH discard:NO]; 
    [self datetime_]; 

    [self fireDelegateSelector:@selector(parser:didMatchPeriodexplicit:)];
}

- (void)periodexplicit_ {
    [self parseRule:@selector(__periodexplicit) withMemo:_periodexplicit_memo];
}

- (void)__periodstart {
    
    [self datetime_]; 
    [self match:ICALPARSER_TOKEN_KIND_FORWARD_SLASH discard:NO]; 
    [self durvalue_]; 

    [self fireDelegateSelector:@selector(parser:didMatchPeriodstart:)];
}

- (void)periodstart_ {
    [self parseRule:@selector(__periodstart) withMemo:_periodstart_memo];
}

- (void)__pctparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchPctparam:)];
}

- (void)pctparam_ {
    [self parseRule:@selector(__pctparam) withMemo:_pctparam_memo];
}

- (void)__priority {
    
    [self match:ICALPARSER_TOKEN_KIND_PRIORITY discard:NO]; 
    [self prioparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self priovalue_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchPriority:)];
}

- (void)priority_ {
    [self parseRule:@selector(__priority) withMemo:_priority_memo];
}

- (void)__prioparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchPrioparam:)];
}

- (void)prioparam_ {
    [self parseRule:@selector(__prioparam) withMemo:_prioparam_memo];
}

- (void)__priovalue {
    
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchPriovalue:)];
}

- (void)priovalue_ {
    [self parseRule:@selector(__priovalue) withMemo:_priovalue_memo];
}

- (void)__prodid {
    
    [self match:ICALPARSER_TOKEN_KIND_PRODID discard:NO]; 
    [self pidparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self pidvalue_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchProdid:)];
}

- (void)prodid_ {
    [self parseRule:@selector(__prodid) withMemo:_prodid_memo];
}

- (void)__pidparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchPidparam:)];
}

- (void)pidparam_ {
    [self parseRule:@selector(__pidparam) withMemo:_pidparam_memo];
}

- (void)__pidvalue {
    
    [self text_]; 

    [self fireDelegateSelector:@selector(parser:didMatchPidvalue:)];
}

- (void)pidvalue_ {
    [self parseRule:@selector(__pidvalue) withMemo:_pidvalue_memo];
}

- (void)__rangeparam {
    
    [self match:ICALPARSER_TOKEN_KIND_RANGE discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_THISANDFUTURE discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchRangeparam:)];
}

- (void)rangeparam_ {
    [self parseRule:@selector(__rangeparam) withMemo:_rangeparam_memo];
}

- (void)__rdate {
    
    [self match:ICALPARSER_TOKEN_KIND_RDATE discard:NO]; 
    [self rdtparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self rdtval_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self rdtval_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self rdtval_]; 
    }
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchRdate:)];
}

- (void)rdate_ {
    [self parseRule:@selector(__rdate) withMemo:_rdate_memo];
}

- (void)__rdtparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_PERIOD, 0]) {[self match:ICALPARSER_TOKEN_KIND_PERIOD discard:NO]; } else {[self raise:@"No viable alternative found in rule 'rdtparam'."];}}]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_PERIOD, 0]) {[self match:ICALPARSER_TOKEN_KIND_PERIOD discard:NO]; } else {[self raise:@"No viable alternative found in rule 'rdtparam'."];}} else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'rdtparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_PERIOD, 0]) {[self match:ICALPARSER_TOKEN_KIND_PERIOD discard:NO]; } else {[self raise:@"No viable alternative found in rule 'rdtparam'."];}}]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {
                [self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; 
            } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {
                [self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; 
            } else if ([self predicts:ICALPARSER_TOKEN_KIND_PERIOD, 0]) {
                [self match:ICALPARSER_TOKEN_KIND_PERIOD discard:NO]; 
            } else {
                [self raise:@"No viable alternative found in rule 'rdtparam'."];
            }
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self tzidparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'rdtparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchRdtparam:)];
}

- (void)rdtparam_ {
    [self parseRule:@selector(__rdtparam) withMemo:_rdtparam_memo];
}

- (void)__rdtval {
    
    if ([self speculate:^{ [self datetime_]; }]) {
        [self datetime_]; 
    } else if ([self speculate:^{ [self date_]; }]) {
        [self date_]; 
    } else if ([self speculate:^{ [self period_]; }]) {
        [self period_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'rdtval'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchRdtval:)];
}

- (void)rdtval_ {
    [self parseRule:@selector(__rdtval) withMemo:_rdtval_memo];
}

- (void)__related {
    
    [self match:ICALPARSER_TOKEN_KIND_RELATED_TO discard:NO]; 
    [self relparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self text_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchRelated:)];
}

- (void)related_ {
    [self parseRule:@selector(__related) withMemo:_related_memo];
}

- (void)__relparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self reltypeparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self reltypeparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'relparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self reltypeparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self reltypeparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'relparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchRelparam:)];
}

- (void)relparam_ {
    [self parseRule:@selector(__relparam) withMemo:_relparam_memo];
}

- (void)__reltypeparam {
    
    [self match:ICALPARSER_TOKEN_KIND_RELTYPE discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    if ([self predicts:ICALPARSER_TOKEN_KIND_PARENT, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_PARENT discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_CHILD, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_CHILD discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_SIBLING, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_SIBLING discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self ianatoken_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
        [self xname_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'reltypeparam'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchReltypeparam:)];
}

- (void)reltypeparam_ {
    [self parseRule:@selector(__reltypeparam) withMemo:_reltypeparam_memo];
}

- (void)__resources {
    
    [self match:ICALPARSER_TOKEN_KIND_RESOURCES discard:NO]; 
    [self resrcparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self text_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self text_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self text_]; 
    }
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchResources:)];
}

- (void)resources_ {
    [self parseRule:@selector(__resources) withMemo:_resources_memo];
}

- (void)__resrcparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'resrcparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self altrepparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self languageparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'resrcparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchResrcparam:)];
}

- (void)resrcparam_ {
    [self parseRule:@selector(__resrcparam) withMemo:_resrcparam_memo];
}

- (void)__recurid {
    
    [self match:ICALPARSER_TOKEN_KIND_RECURRENCE_ID discard:NO]; 
    [self ridparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self ridval_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchRecurid:)];
}

- (void)recurid_ {
    [self parseRule:@selector(__recurid) withMemo:_recurid_memo];
}

- (void)__repeat {
    
    [self match:ICALPARSER_TOKEN_KIND_REPEAT discard:NO]; 
    [self repparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self matchNumber:NO]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchRepeat:)];
}

- (void)repeat_ {
    [self parseRule:@selector(__repeat) withMemo:_repeat_memo];
}

- (void)__repparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchRepparam:)];
}

- (void)repparam_ {
    [self parseRule:@selector(__repparam) withMemo:_repparam_memo];
}

- (void)__ridparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else {[self raise:@"No viable alternative found in rule 'ridparam'."];}}]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else {[self raise:@"No viable alternative found in rule 'ridparam'."];}} else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self rangeparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self rangeparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'ridparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {[self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; } else {[self raise:@"No viable alternative found in rule 'ridparam'."];}}]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {
                [self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; 
            } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {
                [self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; 
            } else {
                [self raise:@"No viable alternative found in rule 'ridparam'."];
            }
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self tzidparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self tzidparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self rangeparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self rangeparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'ridparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchRidparam:)];
}

- (void)ridparam_ {
    [self parseRule:@selector(__ridparam) withMemo:_ridparam_memo];
}

- (void)__ridval {
    
    if ([self speculate:^{ [self datetime_]; }]) {
        [self datetime_]; 
    } else if ([self speculate:^{ [self date_]; }]) {
        [self date_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'ridval'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchRidval:)];
}

- (void)ridval_ {
    [self parseRule:@selector(__ridval) withMemo:_ridval_memo];
}

- (void)__roleparam {
    
    [self match:ICALPARSER_TOKEN_KIND_ROLE discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    if ([self predicts:ICALPARSER_TOKEN_KIND_CHAIR, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_CHAIR discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_REQ_PARTICIPANT, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_REQ_PARTICIPANT discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_OPT_PARTICIPANT, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_OPT_PARTICIPANT discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_NON_PARTICIPANT, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_NON_PARTICIPANT discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
        [self xname_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self ianatoken_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'roleparam'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchRoleparam:)];
}

- (void)roleparam_ {
    [self parseRule:@selector(__roleparam) withMemo:_roleparam_memo];
}

- (void)__rrule {
    
    [self match:ICALPARSER_TOKEN_KIND_RRULE discard:NO]; 
    [self rrulparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self recur_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchRrule:)];
}

- (void)rrule_ {
    [self parseRule:@selector(__rrule) withMemo:_rrule_memo];
}

- (void)__rrulparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchRrulparam:)];
}

- (void)rrulparam_ {
    [self parseRule:@selector(__rrulparam) withMemo:_rrulparam_memo];
}

- (void)__recur {
    
    [self recurrulepart_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self recurrulepart_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self recurrulepart_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchRecur:)];
}

- (void)recur_ {
    [self parseRule:@selector(__recur) withMemo:_recur_memo];
}

- (void)__recurrulepart {
    
    while ([self speculate:^{ if ([self predicts:ICALPARSER_TOKEN_KIND_FREQ, 0]) {[self match:ICALPARSER_TOKEN_KIND_FREQ discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self freq_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_UNTIL, 0]) {[self match:ICALPARSER_TOKEN_KIND_UNTIL discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self enddate_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_COUNT, 0]) {[self match:ICALPARSER_TOKEN_KIND_COUNT discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self matchNumber:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_INTERVAL, 0]) {[self match:ICALPARSER_TOKEN_KIND_INTERVAL discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self matchNumber:NO]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYSECOND, 0]) {[self match:ICALPARSER_TOKEN_KIND_BYSECOND discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self byseclist_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYMINUTE, 0]) {[self match:ICALPARSER_TOKEN_KIND_BYMINUTE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self byminlist_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYHOUR, 0]) {[self match:ICALPARSER_TOKEN_KIND_BYHOUR discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self byhrlist_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYDAY, 0]) {[self match:ICALPARSER_TOKEN_KIND_BYDAY discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self bywdaylist_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYMONTHDAY, 0]) {[self match:ICALPARSER_TOKEN_KIND_BYMONTHDAY discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self bymodaylist_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYYEARDAY, 0]) {[self match:ICALPARSER_TOKEN_KIND_BYYEARDAY discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self byyrdaylist_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYWEEKNO, 0]) {[self match:ICALPARSER_TOKEN_KIND_BYWEEKNO discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self bywknolist_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYMONTH, 0]) {[self match:ICALPARSER_TOKEN_KIND_BYMONTH discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self bymolist_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYSETPOS, 0]) {[self match:ICALPARSER_TOKEN_KIND_BYSETPOS discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self bysplist_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_WKST, 0]) {[self match:ICALPARSER_TOKEN_KIND_WKST discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self weekday_]; } else {[self raise:@"No viable alternative found in rule 'recurrulepart'."];}}]) {
        if ([self predicts:ICALPARSER_TOKEN_KIND_FREQ, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_FREQ discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self freq_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_UNTIL, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_UNTIL discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self enddate_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_COUNT, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_COUNT discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self matchNumber:NO]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_INTERVAL, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_INTERVAL discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self matchNumber:NO]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYSECOND, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_BYSECOND discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self byseclist_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYMINUTE, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_BYMINUTE discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self byminlist_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYHOUR, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_BYHOUR discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self byhrlist_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYDAY, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_BYDAY discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self bywdaylist_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYMONTHDAY, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_BYMONTHDAY discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self bymodaylist_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYYEARDAY, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_BYYEARDAY discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self byyrdaylist_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYWEEKNO, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_BYWEEKNO discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self bywknolist_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYMONTH, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_BYMONTH discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self bymolist_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_BYSETPOS, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_BYSETPOS discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self bysplist_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_WKST, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_WKST discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self weekday_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'recurrulepart'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchRecurrulepart:)];
}

- (void)recurrulepart_ {
    [self parseRule:@selector(__recurrulepart) withMemo:_recurrulepart_memo];
}

- (void)__freq {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_SECONDLY, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_SECONDLY discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_MINUTELY, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_MINUTELY discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_HOURLY, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_HOURLY discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_DAILY, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_DAILY discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_WEEKLY, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_WEEKLY discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_MONTHLY, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_MONTHLY discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_YEARLY, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_YEARLY discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'freq'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchFreq:)];
}

- (void)freq_ {
    [self parseRule:@selector(__freq) withMemo:_freq_memo];
}

- (void)__enddate {
    
    if ([self speculate:^{ [self date_]; }]) {
        [self date_]; 
    } else if ([self speculate:^{ [self datetime_]; }]) {
        [self datetime_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'enddate'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchEnddate:)];
}

- (void)enddate_ {
    [self parseRule:@selector(__enddate) withMemo:_enddate_memo];
}

- (void)__byseclist {
    
    [self seconds_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self seconds_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self seconds_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchByseclist:)];
}

- (void)byseclist_ {
    [self parseRule:@selector(__byseclist) withMemo:_byseclist_memo];
}

- (void)__seconds {
    
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchSeconds:)];
}

- (void)seconds_ {
    [self parseRule:@selector(__seconds) withMemo:_seconds_memo];
}

- (void)__byminlist {
    
    [self minutes_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self minutes_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self minutes_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchByminlist:)];
}

- (void)byminlist_ {
    [self parseRule:@selector(__byminlist) withMemo:_byminlist_memo];
}

- (void)__minutes {
    
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchMinutes:)];
}

- (void)minutes_ {
    [self parseRule:@selector(__minutes) withMemo:_minutes_memo];
}

- (void)__byhrlist {
    
    [self hour_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self hour_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self hour_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchByhrlist:)];
}

- (void)byhrlist_ {
    [self parseRule:@selector(__byhrlist) withMemo:_byhrlist_memo];
}

- (void)__hour {
    
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchHour:)];
}

- (void)hour_ {
    [self parseRule:@selector(__hour) withMemo:_hour_memo];
}

- (void)__bywdaylist {
    
    [self weekdaynum_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self weekdaynum_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self weekdaynum_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchBywdaylist:)];
}

- (void)bywdaylist_ {
    [self parseRule:@selector(__bywdaylist) withMemo:_bywdaylist_memo];
}

- (void)__weekdaynum {
    
    while ([self speculate:^{ while ([self predicts:ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_PLUS, 0]) {if ([self predicts:ICALPARSER_TOKEN_KIND_PLUS, 0]) {[self plus_]; } else if ([self predicts:ICALPARSER_TOKEN_KIND_MINUS, 0]) {[self minus_]; } else {[self raise:@"No viable alternative found in rule 'weekdaynum'."];}}[self ordwk_]; }]) {
        while ([self predicts:ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_PLUS, 0]) {
            if ([self predicts:ICALPARSER_TOKEN_KIND_PLUS, 0]) {
                [self plus_]; 
            } else if ([self predicts:ICALPARSER_TOKEN_KIND_MINUS, 0]) {
                [self minus_]; 
            } else {
                [self raise:@"No viable alternative found in rule 'weekdaynum'."];
            }
        }
        [self ordwk_]; 
    }
    [self weekday_]; 

    [self fireDelegateSelector:@selector(parser:didMatchWeekdaynum:)];
}

- (void)weekdaynum_ {
    [self parseRule:@selector(__weekdaynum) withMemo:_weekdaynum_memo];
}

- (void)__plus {
    
    [self match:ICALPARSER_TOKEN_KIND_PLUS discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchPlus:)];
}

- (void)plus_ {
    [self parseRule:@selector(__plus) withMemo:_plus_memo];
}

- (void)__minus {
    
    [self match:ICALPARSER_TOKEN_KIND_MINUS discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchMinus:)];
}

- (void)minus_ {
    [self parseRule:@selector(__minus) withMemo:_minus_memo];
}

- (void)__ordwk {
    
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchOrdwk:)];
}

- (void)ordwk_ {
    [self parseRule:@selector(__ordwk) withMemo:_ordwk_memo];
}

- (void)__weekday {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_SU, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_SU discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_MO, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_MO discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_TU, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_TU discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_WE, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_WE discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_TH, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_TH discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_FR, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_FR discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_SA, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_SA discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'weekday'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchWeekday:)];
}

- (void)weekday_ {
    [self parseRule:@selector(__weekday) withMemo:_weekday_memo];
}

- (void)__bymodaylist {
    
    [self monthdaynum_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self monthdaynum_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self monthdaynum_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchBymodaylist:)];
}

- (void)bymodaylist_ {
    [self parseRule:@selector(__bymodaylist) withMemo:_bymodaylist_memo];
}

- (void)__monthdaynum {
    
    while ([self predicts:ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_PLUS, 0]) {
        if ([self predicts:ICALPARSER_TOKEN_KIND_PLUS, 0]) {
            [self plus_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_MINUS, 0]) {
            [self minus_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'monthdaynum'."];
        }
    }
    [self ordmoday_]; 

    [self fireDelegateSelector:@selector(parser:didMatchMonthdaynum:)];
}

- (void)monthdaynum_ {
    [self parseRule:@selector(__monthdaynum) withMemo:_monthdaynum_memo];
}

- (void)__ordmoday {
    
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchOrdmoday:)];
}

- (void)ordmoday_ {
    [self parseRule:@selector(__ordmoday) withMemo:_ordmoday_memo];
}

- (void)__byyrdaylist {
    
    [self yeardaynum_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self yeardaynum_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self yeardaynum_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchByyrdaylist:)];
}

- (void)byyrdaylist_ {
    [self parseRule:@selector(__byyrdaylist) withMemo:_byyrdaylist_memo];
}

- (void)__yeardaynum {
    
    while ([self predicts:ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_PLUS, 0]) {
        if ([self predicts:ICALPARSER_TOKEN_KIND_PLUS, 0]) {
            [self plus_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_MINUS, 0]) {
            [self minus_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'yeardaynum'."];
        }
    }
    [self ordyrday_]; 

    [self fireDelegateSelector:@selector(parser:didMatchYeardaynum:)];
}

- (void)yeardaynum_ {
    [self parseRule:@selector(__yeardaynum) withMemo:_yeardaynum_memo];
}

- (void)__ordyrday {
    
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchOrdyrday:)];
}

- (void)ordyrday_ {
    [self parseRule:@selector(__ordyrday) withMemo:_ordyrday_memo];
}

- (void)__bywknolist {
    
    [self weeknum_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self weeknum_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self weeknum_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchBywknolist:)];
}

- (void)bywknolist_ {
    [self parseRule:@selector(__bywknolist) withMemo:_bywknolist_memo];
}

- (void)__weeknum {
    
    while ([self predicts:ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_PLUS, 0]) {
        if ([self predicts:ICALPARSER_TOKEN_KIND_PLUS, 0]) {
            [self plus_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_MINUS, 0]) {
            [self minus_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'weeknum'."];
        }
    }
    [self ordwk_]; 

    [self fireDelegateSelector:@selector(parser:didMatchWeeknum:)];
}

- (void)weeknum_ {
    [self parseRule:@selector(__weeknum) withMemo:_weeknum_memo];
}

- (void)__bymolist {
    
    [self monthnum_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self monthnum_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self monthnum_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchBymolist:)];
}

- (void)bymolist_ {
    [self parseRule:@selector(__bymolist) withMemo:_bymolist_memo];
}

- (void)__monthnum {
    
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchMonthnum:)];
}

- (void)monthnum_ {
    [self parseRule:@selector(__monthnum) withMemo:_monthnum_memo];
}

- (void)__bysplist {
    
    [self setposday_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self setposday_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self setposday_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchBysplist:)];
}

- (void)bysplist_ {
    [self parseRule:@selector(__bysplist) withMemo:_bysplist_memo];
}

- (void)__setposday {
    
    [self yeardaynum_]; 

    [self fireDelegateSelector:@selector(parser:didMatchSetposday:)];
}

- (void)setposday_ {
    [self parseRule:@selector(__setposday) withMemo:_setposday_memo];
}

- (void)__rstatus {
    
    [self match:ICALPARSER_TOKEN_KIND_REQUEST_STATUS discard:NO]; 
    [self rstatparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self statcode_]; 
    [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
    [self statdesc_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self extdata_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self extdata_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchRstatus:)];
}

- (void)rstatus_ {
    [self parseRule:@selector(__rstatus) withMemo:_rstatus_memo];
}

- (void)__rstatparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'rstatparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self languageparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'rstatparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchRstatparam:)];
}

- (void)rstatparam_ {
    [self parseRule:@selector(__rstatparam) withMemo:_rstatparam_memo];
}

- (void)__rsvpparam {
    
    [self match:ICALPARSER_TOKEN_KIND_RSVP discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    if ([self predicts:ICALPARSER_TOKEN_KIND_TRUE_UPPER, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_TRUE_UPPER discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_FALSE_UPPER, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_FALSE_UPPER discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'rsvpparam'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchRsvpparam:)];
}

- (void)rsvpparam_ {
    [self parseRule:@selector(__rsvpparam) withMemo:_rsvpparam_memo];
}

- (void)__statcode {
    
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchStatcode:)];
}

- (void)statcode_ {
    [self parseRule:@selector(__statcode) withMemo:_statcode_memo];
}

- (void)__statdesc {
    
    [self text_]; 

    [self fireDelegateSelector:@selector(parser:didMatchStatdesc:)];
}

- (void)statdesc_ {
    [self parseRule:@selector(__statdesc) withMemo:_statdesc_memo];
}

- (void)__extdata {
    
    [self text_]; 

    [self fireDelegateSelector:@selector(parser:didMatchExtdata:)];
}

- (void)extdata_ {
    [self parseRule:@selector(__extdata) withMemo:_extdata_memo];
}

- (void)__seq {
    
    [self match:ICALPARSER_TOKEN_KIND_SEQUENCE discard:NO]; 
    [self seqparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self matchNumber:NO]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchSeq:)];
}

- (void)seq_ {
    [self parseRule:@selector(__seq) withMemo:_seq_memo];
}

- (void)__seqparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchSeqparam:)];
}

- (void)seqparam_ {
    [self parseRule:@selector(__seqparam) withMemo:_seqparam_memo];
}

- (void)__status {
    
    [self match:ICALPARSER_TOKEN_KIND_STATUS discard:NO]; 
    [self statparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self statvalue_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchStatus:)];
}

- (void)status_ {
    [self parseRule:@selector(__status) withMemo:_status_memo];
}

- (void)__statparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchStatparam:)];
}

- (void)statparam_ {
    [self parseRule:@selector(__statparam) withMemo:_statparam_memo];
}

- (void)__statvalue {
    
    if ([self speculate:^{ [self statvalueevent_]; }]) {
        [self statvalueevent_]; 
    } else if ([self speculate:^{ [self statvaluetodo_]; }]) {
        [self statvaluetodo_]; 
    } else if ([self speculate:^{ [self statvaluejour_]; }]) {
        [self statvaluejour_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'statvalue'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchStatvalue:)];
}

- (void)statvalue_ {
    [self parseRule:@selector(__statvalue) withMemo:_statvalue_memo];
}

- (void)__statvalueevent {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_TENTATIVE, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_TENTATIVE discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_CONFIRMED, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_CONFIRMED discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_CANCELLED, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_CANCELLED discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'statvalueevent'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchStatvalueevent:)];
}

- (void)statvalueevent_ {
    [self parseRule:@selector(__statvalueevent) withMemo:_statvalueevent_memo];
}

- (void)__statvaluetodo {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_NEEDS_ACTION, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_NEEDS_ACTION discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_COMPLETED, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_COMPLETED discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_IN_PROCESS, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_IN_PROCESS discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_CANCELLED, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_CANCELLED discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'statvaluetodo'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchStatvaluetodo:)];
}

- (void)statvaluetodo_ {
    [self parseRule:@selector(__statvaluetodo) withMemo:_statvaluetodo_memo];
}

- (void)__statvaluejour {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_DRAFT, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_DRAFT discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_FINAL, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_FINAL discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_CANCELLED, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_CANCELLED discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'statvaluejour'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchStatvaluejour:)];
}

- (void)statvaluejour_ {
    [self parseRule:@selector(__statvaluejour) withMemo:_statvaluejour_memo];
}

- (void)__summary {
    
    [self match:ICALPARSER_TOKEN_KIND_SUMMARY discard:NO]; 
    [self summparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self text_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchSummary:)];
}

- (void)summary_ {
    [self parseRule:@selector(__summary) withMemo:_summary_memo];
}

- (void)__summparam {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'summparam'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self altrepparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self altrepparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self languageparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self languageparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'summparam'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchSummparam:)];
}

- (void)summparam_ {
    [self parseRule:@selector(__summparam) withMemo:_summparam_memo];
}

- (void)__sentbyparam {
    
    [self match:ICALPARSER_TOKEN_KIND_SENT_BY discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
    [self caladdress_]; 
    [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchSentbyparam:)];
}

- (void)sentbyparam_ {
    [self parseRule:@selector(__sentbyparam) withMemo:_sentbyparam_memo];
}

- (void)__text {
    
    while ([self speculate:^{ if ([self speculate:^{ [self tsafechar_]; }]) {[self tsafechar_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; }]) {[self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; }]) {[self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; } else if ([self speculate:^{ [self escapedchar_]; }]) {[self escapedchar_]; } else {[self raise:@"No viable alternative found in rule 'text'."];}}]) {
        if ([self speculate:^{ [self tsafechar_]; }]) {
            [self tsafechar_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; 
        } else if ([self speculate:^{ [self escapedchar_]; }]) {
            [self escapedchar_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'text'."];
        }
    }

    [self fireDelegateSelector:@selector(parser:didMatchText:)];
}

- (void)text_ {
    [self parseRule:@selector(__text) withMemo:_text_memo];
}

- (void)__escapedchar {
    
    if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_BSLASH discard:NO]; if ([self speculate:^{ [self crlf_]; [self matchWhitespace:NO]; }]) {[self crlf_]; [self matchWhitespace:NO]; }[self match:ICALPARSER_TOKEN_KIND_BSLASH discard:NO]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_BSLASH discard:NO]; 
        if ([self speculate:^{ [self crlf_]; [self matchWhitespace:NO]; }]) {
            [self crlf_]; 
            [self matchWhitespace:NO]; 
        }
        [self match:ICALPARSER_TOKEN_KIND_BSLASH discard:NO]; 
    } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_BSLASH discard:NO]; if ([self speculate:^{ [self crlf_]; [self matchWhitespace:NO]; }]) {[self crlf_]; [self matchWhitespace:NO]; }[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_BSLASH discard:NO]; 
        if ([self speculate:^{ [self crlf_]; [self matchWhitespace:NO]; }]) {
            [self crlf_]; 
            [self matchWhitespace:NO]; 
        }
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
    } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_BSLASH discard:NO]; if ([self speculate:^{ [self crlf_]; [self matchWhitespace:NO]; }]) {[self crlf_]; [self matchWhitespace:NO]; }[self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_BSLASH discard:NO]; 
        if ([self speculate:^{ [self crlf_]; [self matchWhitespace:NO]; }]) {
            [self crlf_]; 
            [self matchWhitespace:NO]; 
        }
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
    } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_BSLASH discard:NO]; if ([self speculate:^{ [self crlf_]; [self matchWhitespace:NO]; }]) {[self crlf_]; [self matchWhitespace:NO]; }[self match:ICALPARSER_TOKEN_KIND_N discard:NO]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_BSLASH discard:NO]; 
        if ([self speculate:^{ [self crlf_]; [self matchWhitespace:NO]; }]) {
            [self crlf_]; 
            [self matchWhitespace:NO]; 
        }
        [self match:ICALPARSER_TOKEN_KIND_N discard:NO]; 
    } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_BSLASH discard:NO]; if ([self speculate:^{ [self crlf_]; [self matchWhitespace:NO]; }]) {[self crlf_]; [self matchWhitespace:NO]; }[self match:ICALPARSER_TOKEN_KIND_N_1 discard:NO]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_BSLASH discard:NO]; 
        if ([self speculate:^{ [self crlf_]; [self matchWhitespace:NO]; }]) {
            [self crlf_]; 
            [self matchWhitespace:NO]; 
        }
        [self match:ICALPARSER_TOKEN_KIND_N_1 discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'escapedchar'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchEscapedchar:)];
}

- (void)escapedchar_ {
    [self parseRule:@selector(__escapedchar) withMemo:_escapedchar_memo];
}

- (void)__tsafechar {
    
    if (![self speculate:^{ if ([self speculate:^{ [self crlf_]; }]) {[self crlf_]; } else if ([self speculate:^{ [self control_]; }]) {[self control_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; }]) {[self match:ICALPARSER_TOKEN_KIND_QUOTE discard:NO]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; }]) {[self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; } else if ([self speculate:^{ [self bslash_]; }]) {[self bslash_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; }]) {[self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; } else {[self raise:@"No viable alternative found in rule 'tsafechar'."];}}]) {
        [self match:TOKEN_KIND_BUILTIN_ANY discard:NO];
    } else {
        [self raise:@"negation test failed in tsafechar"];
    }

    [self fireDelegateSelector:@selector(parser:didMatchTsafechar:)];
}

- (void)tsafechar_ {
    [self parseRule:@selector(__tsafechar) withMemo:_tsafechar_memo];
}

- (void)__time {
    
    [self matchNumber:NO]; 
    if ([self predicts:ICALPARSER_TOKEN_KIND_Z, 0]) {
        [self timeutc_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchTime:)];
}

- (void)time_ {
    [self parseRule:@selector(__time) withMemo:_time_memo];
}

- (void)__timehour {
    
    [self matchNumber:NO]; 
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchTimehour:)];
}

- (void)timehour_ {
    [self parseRule:@selector(__timehour) withMemo:_timehour_memo];
}

- (void)__timeminute {
    
    [self matchNumber:NO]; 
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchTimeminute:)];
}

- (void)timeminute_ {
    [self parseRule:@selector(__timeminute) withMemo:_timeminute_memo];
}

- (void)__timesecond {
    
    [self matchNumber:NO]; 
    [self matchNumber:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchTimesecond:)];
}

- (void)timesecond_ {
    [self parseRule:@selector(__timesecond) withMemo:_timesecond_memo];
}

- (void)__timeutc {
    
    [self match:ICALPARSER_TOKEN_KIND_Z discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchTimeutc:)];
}

- (void)timeutc_ {
    [self parseRule:@selector(__timeutc) withMemo:_timeutc_memo];
}

- (void)__trigger {
    
    [self match:ICALPARSER_TOKEN_KIND_TRIGGER discard:NO]; 
    if ([self speculate:^{ [self trigrel_]; }]) {
        [self trigrel_]; 
    } else if ([self speculate:^{ [self trigabs_]; }]) {
        [self trigabs_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'trigger'."];
    }
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchTrigger:)];
}

- (void)trigger_ {
    [self parseRule:@selector(__trigger) withMemo:_trigger_memo];
}

- (void)__trigrel {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self match:ICALPARSER_TOKEN_KIND_DURATION discard:NO]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self match:ICALPARSER_TOKEN_KIND_DURATION discard:NO]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self trigrelparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self trigrelparam_]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'trigrel'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self match:ICALPARSER_TOKEN_KIND_DURATION discard:NO]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_DURATION discard:NO]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self trigrelparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self trigrelparam_]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'trigrel'."];
        }
    }
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self durvalue_]; 

    [self fireDelegateSelector:@selector(parser:didMatchTrigrel:)];
}

- (void)trigrel_ {
    [self parseRule:@selector(__trigrel) withMemo:_trigrel_memo];
}

- (void)__trigrelparam {
    
    [self match:ICALPARSER_TOKEN_KIND_RELATED discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    if ([self predicts:ICALPARSER_TOKEN_KIND_START, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_START discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_END, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_END discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'trigrelparam'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchTrigrelparam:)];
}

- (void)trigrelparam_ {
    [self parseRule:@selector(__trigrelparam) withMemo:_trigrelparam_memo];
}

- (void)__trigabs {
    
    while ([self speculate:^{ if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {[self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; } else {[self raise:@"No viable alternative found in rule 'trigabs'."];}}]) {
        if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; [self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
            [self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; 
        } else if ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
            [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
            [self otherparam_]; 
        } else {
            [self raise:@"No viable alternative found in rule 'trigabs'."];
        }
    }
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self datetime_]; 

    [self fireDelegateSelector:@selector(parser:didMatchTrigabs:)];
}

- (void)trigabs_ {
    [self parseRule:@selector(__trigabs) withMemo:_trigabs_memo];
}

- (void)__tzidparam {
    
    [self match:ICALPARSER_TOKEN_KIND_TZID discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    while ([self predicts:ICALPARSER_TOKEN_KIND_PIPE, 0]) {
        [self tzidprefix_]; 
    }
    [self paramtext_]; 

    [self fireDelegateSelector:@selector(parser:didMatchTzidparam:)];
}

- (void)tzidparam_ {
    [self parseRule:@selector(__tzidparam) withMemo:_tzidparam_memo];
}

- (void)__tzidprefix {
    
    [self match:ICALPARSER_TOKEN_KIND_PIPE discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchTzidprefix:)];
}

- (void)tzidprefix_ {
    [self parseRule:@selector(__tzidprefix) withMemo:_tzidprefix_memo];
}

- (void)__uid {
    
    [self match:ICALPARSER_TOKEN_KIND_UID discard:NO]; 
    [self uidparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self text_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchUid:)];
}

- (void)uid_ {
    [self parseRule:@selector(__uid) withMemo:_uid_memo];
}

- (void)__uidparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchUidparam:)];
}

- (void)uidparam_ {
    [self parseRule:@selector(__uidparam) withMemo:_uidparam_memo];
}

- (void)__uri {
    
    [self matchURL:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchUri:)];
}

- (void)uri_ {
    [self parseRule:@selector(__uri) withMemo:_uri_memo];
}

- (void)__url {
    
    [self uri_]; 

    [self fireDelegateSelector:@selector(parser:didMatchUrl:)];
}

- (void)url_ {
    [self parseRule:@selector(__url) withMemo:_url_memo];
}

- (void)__valuetypeparam {
    
    [self match:ICALPARSER_TOKEN_KIND_VALUE discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    [self valuetype_]; 

    [self fireDelegateSelector:@selector(parser:didMatchValuetypeparam:)];
}

- (void)valuetypeparam_ {
    [self parseRule:@selector(__valuetypeparam) withMemo:_valuetypeparam_memo];
}

- (void)__valuetype {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND_BINARY, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_BINARY discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_BOOLEAN, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_BOOLEAN discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_CAL_ADDRESS, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_CAL_ADDRESS discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_DATE discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_DATE_TIME, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_DATE_TIME discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_DURATION, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_DURATION discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_FLOAT, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_FLOAT discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_INTEGER, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_INTEGER discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_PERIOD, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_PERIOD discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_RECUR, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_RECUR discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_TEXT, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_TEXT discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_TIME, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_TIME discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_URI, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_URI discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_UTC_OFFSET, 0]) {
        [self match:ICALPARSER_TOKEN_KIND_UTC_OFFSET discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_1, 0]) {
        [self xname_]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
        [self ianatoken_]; 
    } else {
        [self raise:@"No viable alternative found in rule 'valuetype'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchValuetype:)];
}

- (void)valuetype_ {
    [self parseRule:@selector(__valuetype) withMemo:_valuetype_memo];
}

- (void)__version {
    
    [self match:ICALPARSER_TOKEN_KIND_VERSION discard:NO]; 
    [self verparam_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self vervalue_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchVersion:)];
}

- (void)version_ {
    [self parseRule:@selector(__version) withMemo:_version_memo];
}

- (void)__verparam {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchVerparam:)];
}

- (void)verparam_ {
    [self parseRule:@selector(__verparam) withMemo:_verparam_memo];
}

- (void)__vervalue {
    
    [self match:ICALPARSER_TOKEN_KIND_VERVALUE discard:NO]; 

    [self fireDelegateSelector:@selector(parser:didMatchVervalue:)];
}

- (void)vervalue_ {
    [self parseRule:@selector(__vervalue) withMemo:_vervalue_memo];
}

- (void)__xcomp {
    
    [self match:ICALPARSER_TOKEN_KIND_BEGIN discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self xname_]; 
    [self crlf_]; 
    while ([self speculate:^{ [self contentline_]; }]) {
        [self contentline_]; 
    }
    [self match:ICALPARSER_TOKEN_KIND_END discard:NO]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self xname_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchXcomp:)];
}

- (void)xcomp_ {
    [self parseRule:@selector(__xcomp) withMemo:_xcomp_memo];
}

- (void)__xparam {
    
    [self xname_]; 
    [self match:ICALPARSER_TOKEN_KIND_EQUALS discard:NO]; 
    [self paramvalue_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; [self paramvalue_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_COMMA discard:NO]; 
        [self paramvalue_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchXparam:)];
}

- (void)xparam_ {
    [self parseRule:@selector(__xparam) withMemo:_xparam_memo];
}

- (void)__xname {
    
    [self match:ICALPARSER_TOKEN_KIND_1 discard:NO]; 
    while ([self speculate:^{ [self vendorid_]; [self match:ICALPARSER_TOKEN_KIND_MINUS discard:NO]; }]) {
        [self vendorid_]; 
        [self match:ICALPARSER_TOKEN_KIND_MINUS discard:NO]; 
    }
    do {
        if ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]) {
            [self alpha_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, 0]) {
            [self digit_]; 
        } else if ([self predicts:ICALPARSER_TOKEN_KIND_MINUS, 0]) {
            [self match:ICALPARSER_TOKEN_KIND_MINUS discard:NO]; 
        } else {
            [self raise:@"No viable alternative found in rule 'xname'."];
        }
    } while ([self predicts:ICALPARSER_TOKEN_KIND_A, ICALPARSER_TOKEN_KIND_A_1, ICALPARSER_TOKEN_KIND_B, ICALPARSER_TOKEN_KIND_B_1, ICALPARSER_TOKEN_KIND_C, ICALPARSER_TOKEN_KIND_C_1, ICALPARSER_TOKEN_KIND_D, ICALPARSER_TOKEN_KIND_D0, ICALPARSER_TOKEN_KIND_D1, ICALPARSER_TOKEN_KIND_D2, ICALPARSER_TOKEN_KIND_D3, ICALPARSER_TOKEN_KIND_D4, ICALPARSER_TOKEN_KIND_D5, ICALPARSER_TOKEN_KIND_D6, ICALPARSER_TOKEN_KIND_D7, ICALPARSER_TOKEN_KIND_D8, ICALPARSER_TOKEN_KIND_D9, ICALPARSER_TOKEN_KIND_D_1, ICALPARSER_TOKEN_KIND_E, ICALPARSER_TOKEN_KIND_E_1, ICALPARSER_TOKEN_KIND_F, ICALPARSER_TOKEN_KIND_F_1, ICALPARSER_TOKEN_KIND_G, ICALPARSER_TOKEN_KIND_G_1, ICALPARSER_TOKEN_KIND_H, ICALPARSER_TOKEN_KIND_H_1, ICALPARSER_TOKEN_KIND_I, ICALPARSER_TOKEN_KIND_I_1, ICALPARSER_TOKEN_KIND_J, ICALPARSER_TOKEN_KIND_J_1, ICALPARSER_TOKEN_KIND_K, ICALPARSER_TOKEN_KIND_K_1, ICALPARSER_TOKEN_KIND_L, ICALPARSER_TOKEN_KIND_L_1, ICALPARSER_TOKEN_KIND_M, ICALPARSER_TOKEN_KIND_MINUS, ICALPARSER_TOKEN_KIND_M_1, ICALPARSER_TOKEN_KIND_N, ICALPARSER_TOKEN_KIND_N_1, ICALPARSER_TOKEN_KIND_O, ICALPARSER_TOKEN_KIND_O_1, ICALPARSER_TOKEN_KIND_P, ICALPARSER_TOKEN_KIND_P_1, ICALPARSER_TOKEN_KIND_Q, ICALPARSER_TOKEN_KIND_Q_1, ICALPARSER_TOKEN_KIND_R, ICALPARSER_TOKEN_KIND_R_1, ICALPARSER_TOKEN_KIND_S, ICALPARSER_TOKEN_KIND_S_TITLE, ICALPARSER_TOKEN_KIND_T, ICALPARSER_TOKEN_KIND_T_1, ICALPARSER_TOKEN_KIND_U, ICALPARSER_TOKEN_KIND_U_1, ICALPARSER_TOKEN_KIND_V, ICALPARSER_TOKEN_KIND_V_1, ICALPARSER_TOKEN_KIND_W, ICALPARSER_TOKEN_KIND_W_1, ICALPARSER_TOKEN_KIND_X, ICALPARSER_TOKEN_KIND_X_1, ICALPARSER_TOKEN_KIND_Y, ICALPARSER_TOKEN_KIND_Y_1, ICALPARSER_TOKEN_KIND_Z, ICALPARSER_TOKEN_KIND_Z_1, 0]);

    [self fireDelegateSelector:@selector(parser:didMatchXname:)];
}

- (void)xname_ {
    [self parseRule:@selector(__xname) withMemo:_xname_memo];
}

- (void)__xprop {
    
    [self xname_]; 
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self icalparameter_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self icalparameter_]; 
    }
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self value_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchXprop:)];
}

- (void)xprop_ {
    [self parseRule:@selector(__xprop) withMemo:_xprop_memo];
}

- (void)__xwrcalname {
    
    [self match:ICALPARSER_TOKEN_KIND_X_WR_CALNAME discard:NO]; 
    [self xwrcalnamep_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self text_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchXwrcalname:)];
}

- (void)xwrcalname_ {
    [self parseRule:@selector(__xwrcalname) withMemo:_xwrcalname_memo];
}

- (void)__xwrcalnamep {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchXwrcalnamep:)];
}

- (void)xwrcalnamep_ {
    [self parseRule:@selector(__xwrcalnamep) withMemo:_xwrcalnamep_memo];
}

- (void)__xwrcalsec {
    
    [self match:ICALPARSER_TOKEN_KIND_X_WR_CALDESC discard:NO]; 
    [self xwrcalsecp_]; 
    [self match:ICALPARSER_TOKEN_KIND_COLON discard:NO]; 
    [self text_]; 
    [self crlf_]; 

    [self fireDelegateSelector:@selector(parser:didMatchXwrcalsec:)];
}

- (void)xwrcalsec_ {
    [self parseRule:@selector(__xwrcalsec) withMemo:_xwrcalsec_memo];
}

- (void)__xwrcalsecp {
    
    while ([self speculate:^{ [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; [self otherparam_]; }]) {
        [self match:ICALPARSER_TOKEN_KIND_SEMI_COLON discard:NO]; 
        [self otherparam_]; 
    }

    [self fireDelegateSelector:@selector(parser:didMatchXwrcalsecp:)];
}

- (void)xwrcalsecp_ {
    [self parseRule:@selector(__xwrcalsecp) withMemo:_xwrcalsecp_memo];
}

- (void)__crlf {
    
    if ([self predicts:ICALPARSER_TOKEN_KIND__X0D, 0]) {
        if ([self predicts:ICALPARSER_TOKEN_KIND__X0D, 0]) {
            [self match:ICALPARSER_TOKEN_KIND__X0D discard:NO]; 
        }
        [self match:ICALPARSER_TOKEN_KIND__X0A discard:NO]; 
    } else if ([self predicts:ICALPARSER_TOKEN_KIND__0D, 0]) {
        [self match:ICALPARSER_TOKEN_KIND__0D discard:NO]; 
    } else {
        [self raise:@"No viable alternative found in rule 'crlf'."];
    }

    [self fireDelegateSelector:@selector(parser:didMatchCrlf:)];
}

- (void)crlf_ {
    [self parseRule:@selector(__crlf) withMemo:_crlf_memo];
}

@end